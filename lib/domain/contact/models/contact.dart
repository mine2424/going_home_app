import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/common/converters/user_converter.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/user/models/user.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String contactId,
    @UserConverter() @Default(<User>[]) List<User> users,
    @Default(NotifyArea.none) NotifyArea notifyArea,
    // 到着したかどうか（offの場合はtrue）
    @Default(true) bool isMatched,
    @Default('') String word,
    @NullableDatetimeTimestampConverter() DateTime? createdAt,
    @NullableDatetimeTimestampConverter() DateTime? updatedAt,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  static String get colPath => 'public/contact/v1';

  static String docPath(String contactId) => '$colPath/$contactId';
}
