import 'dart:async';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';
import 'package:going_home_app/common/packages/location_extention.dart';
import 'package:going_home_app/domain/contact/contact_repository.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/contact_location_repository.dart';
import 'package:going_home_app/domain/contact_location/contact_location_service.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_history_state.dart';

final contactHistoryNotifierProvider = StateNotifierProvider<
    ContactHistoryNotifier, AsyncValue<ContactHistoryState>>(
  (ref) => ContactHistoryNotifier(
    ref,
    ref.read(contactRepositoryProvider),
    ref.read(authNotifierProvider.notifier),
    ref.read(contactLocationServiceProvider),
    ref.read(contactLocationRepositoryProvider),
  )..init(),
);

class ContactHistoryNotifier
    extends StateNotifier<AsyncValue<ContactHistoryState>> {
  ContactHistoryNotifier(
    this._ref,
    this._contactRepository,
    this._authNotifier,
    this._contactLocationService,
    this._contactLocationRepository,
  ) : super(const AsyncValue.loading());

  final Ref _ref;

  final ContactRepository _contactRepository;
  final AuthNotifier _authNotifier;
  final ContactLocationService _contactLocationService;
  final ContactLocationRepository _contactLocationRepository;

  StreamSubscription<LocationData>? _locationSubscription;

  Future<void> init() async {
    await getContactLocationHistory();
  }

  @override
  void dispose() {
    _locationSubscription?.cancel();
    super.dispose();
  }

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  Future<void> getContactLocationHistory() async {
    final stat = _ref.watch(contactNotifierProvider).asData?.value ??
        const ContactState();
    try {
      final histories = await _contactLocationRepository
          .getContactLocationHistories(stat.selectedContact.contactId);
      state = AsyncValue.data(ContactHistoryState(histories: histories));
    } catch (e, s) {
      state = AsyncValue.error(e, s);
      print('Failed to get contact location histories. $e \n\n $s');
    }
  }

  Future<void> startRecording(Contact contact) async {
    // locationのオン(最初の画面でpermissionを設定すること)
    _contactLocationService.allowGeolocation();

    try {
      final stat = state.asData?.value ?? const ContactHistoryState();
      // isMatchedをfalseにする
      final sentUser = await _authNotifier.getMyUserForContact();
      await _contactRepository.updateContact(
        contact.copyWith(isMatched: false, sentUser: sentUser),
      );
      await _contactLocationRepository.saveContactLocationHistory(
        contact.contactId,
        stat.locations,
      );

      // locationの取得, 相手の位置情報もこれで取得して、同時にDBへ保存???
      // 事前にgoalとなる位置情報を設定する必要がある(list化して目的地を選択できるようにする)
      _locationSubscription =
          _contactLocationService.stream.listen((location) async {
        state = AsyncValue.data(
          stat.copyWith(
            locations: [
              ...stat.locations,
              ContactLocation.toLocation(location)
            ],
            currentCreatedAt: stat.currentCreatedAt ?? DateTime.now(),
          ),
        );

        if (location.latitude == null || location.longitude == null) {
          return;
        }

        final goalLocation = contact.currentGoalLocation;
        final limitMeter = contact.notifyArea.toMeter();
        final gapMeter = LocationExt.distanceBetween(
          goalLocation.latitude,
          goalLocation.longitude,
          location.latitude!,
          location.longitude!,
        );
        if (gapMeter <= limitMeter) {
          // isMatchをtrueにする
          await _contactRepository
              .updateContact(contact.copyWith(isMatched: true));
          if (gapMeter < 50) {
            // contactLocationHistoryをDBに保存
            // これは、5m以内（ほぼ到着）で保存した方がいいのか？
            await _contactLocationRepository.saveContactLocationHistory(
              contact.contactId,
              stat.locations,
            );
          }
          // done

          // TODO: そもそも、完全についた時は通知しなくていいから、ここで全ての処理を終了させていいのでは？
          // TODO: 例えば、リアクションを完全に到着した合図にするでもいいかもしれない
          return;
        }
      });
    } catch (e, s) {
      print('Failed to start recording. $e \n\n $s');
    }
  }
}
