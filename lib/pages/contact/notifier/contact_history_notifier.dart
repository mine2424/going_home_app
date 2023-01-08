import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:going_home_app/common/packages/location_extention.dart';
import 'package:going_home_app/domain/contact/contact_repository.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/contact_location_repository.dart';
import 'package:going_home_app/domain/contact_location/contact_location_service.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_history_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

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

  late StreamSubscription<LocationData> _locationSubscription;

  Future<void> init() async {}

  @override
  void dispose() {
    _locationSubscription.cancel();
    super.dispose();
  }

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  Future<void> startRecording(Contact contact) async {
    // TODO: 相手への通知
    // locationのオン(最初の画面でpermissionを設定すること)
    _contactLocationService.allowGeolocation();

    try {
      // isMatchedをfalseにする
      await _contactRepository
          .updateContact(contact.copyWith(isMatched: false));
      // locationの取得, 相手の位置情報もこれで取得して、同時にDBへ保存???
      // 事前にgoalとなる位置情報を設定する必要がある(list化して目的地を選択できるようにする)
      _locationSubscription =
          _contactLocationService.stream.listen((location) async {
        final val = state.asData!.value;
        state = AsyncValue.data(
          state.asData!.value.copyWith(
            locations: [...val.locations, ContactLocation.toLocation(location)],
            currentCreatedAt: val.currentCreatedAt ?? DateTime.now(),
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
              .updateContact(contact.copyWith(isMatched: false));
          // contactLocationHistoryをDBに保存
          await _contactLocationRepository.saveContactLocationHistory(
            contact.contactId,
            state.asData!.value.locations,
          );
          // まもなく到着しますという通知を送るう
          // done

          // TODO: そもそも、完全についた時は通知しなくていいから、ここで全ての処理を終了させていいのでは？
          // TODO: 例えば、リアクションを完全に到着した合図にするでもいいかもしれない
          return;
        }
      });
    } catch (e) {
      print(e);
    }
  }
}
