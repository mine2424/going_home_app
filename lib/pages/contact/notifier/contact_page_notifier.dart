import 'package:going_home_app/pages/contact/state/contact_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactRepositoryProvider =
    StateNotifierProvider<ContactPageNotifier, AsyncValue<ContactPageState>>(
  (ref) => ContactPageNotifier(ref: ref),
);

class ContactPageNotifier extends StateNotifier<AsyncValue<ContactPageState>> {
  ContactPageNotifier({required Ref ref})
      : _ref = ref,
        super(const AsyncValue.loading());

  final Ref _ref;

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  void startRecording() {
    // TODO: locationのオン(最初の画面でpermissionを設定すること)
    // TODO: locationの取得
    // TODO: 相手への通知
    // TODO: 通知を受け取ったら、相手の位置情報を取得
    // TODO: locationをDBに保存していく
    // TODO: 相手との距離が特定の値を超えたら、通知を送る
  }

  void stopRecording() {
    // TODO: locationのオフ
    // TODO: locationの取得を止める
    // TODO: 相手への通知
  }
}
