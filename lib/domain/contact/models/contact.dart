import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String contactId,
    @Default(<String>[]) List<String> userIds,
    @Default(NotifyArea.none) NotifyArea notifyArea,

    // TODO: localの永続化DBに保存する必要があるかも
    @Default(false) bool alreadyNotified,

    // TODO: 時系列にするためにcontactごとの位置情報を保存する必要があるかも
    // @Default([]) Map<String,List<ContactLocation>> locations,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  static String get colPath => 'users/contacts/';

  static String docPath(String contactId) => 'users/contacts/$contactId';
}
