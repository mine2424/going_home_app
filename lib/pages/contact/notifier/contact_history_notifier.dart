import 'package:going_home_app/common/packages/ulid.dart';
import 'package:going_home_app/domain/contact/contact_repository.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/contact_location_service.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_history_state.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactNotifierProvider = StateNotifierProvider<ContactHistoryNotifier,
    AsyncValue<ContactHistoryState>>(
  (ref) => ContactHistoryNotifier(
    ref,
    ref.read(contactRepositoryProvider),
    ref.read(authNotifierProvider.notifier),
    ref.read(contactLocationServiceProvider),
  )..init(),
);

class ContactHistoryNotifier
    extends StateNotifier<AsyncValue<ContactHistoryState>> {
  ContactHistoryNotifier(this._ref, this._contactRepository, this._authNotifier,
      this._contactLocationService)
      : super(const AsyncValue.loading());

  final Ref _ref;

  final ContactRepository _contactRepository;
  final AuthNotifier _authNotifier;
  final ContactLocationService _contactLocationService;

  Future<void> init() async {}

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  Future<void> startRecording() async {
    // TODO: 相手への通知
    // locationのオン(最初の画面でpermissionを設定すること)
    _contactLocationService.allowGeolocation();

    // locationの取得, 相手の位置情報もこれで取得して、同時にDBへ保存???
    // 事前にgoalとなる位置情報を設定する必要がある(list化して目的地を選択できるようにする)
    _contactLocationService.stream.listen((location) {
      final val = state.value!;
      state = AsyncValue.data(
        ContactHistoryState(
          locations: [...val.locations, ContactLocation.toLocation(location)],
          currentCreatedAt: val.currentCreatedAt ?? DateTime.now(),
        ),
      );
    });
  }
}
