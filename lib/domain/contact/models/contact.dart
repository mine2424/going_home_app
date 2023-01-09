import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_location_converter.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/common/converters/user_converter.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/user/models/user.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String contactId,
    @Default('') String word,
    @Default('') String contactName,
    // 到着したかどうか（offの場合はtrue）
    @Default(true) bool isMatched,
    @UserConverter() @Default(User()) User sentUser,
    @Default(false) bool isFavorite,
    @Default(NotifyArea.none) NotifyArea notifyArea,
    @UserConverter() @Default(<User>[]) List<User> users,
    @ContactLocationConverter()
    @Default(ContactLocation())
        ContactLocation currentGoalLocation,
    @ContactLocationConverter()
    @Default(<ContactLocation>[])
        List<ContactLocation> goalLocationList,
    @NullableDatetimeTimestampConverter() DateTime? createdAt,
    @NullableDatetimeTimestampConverter() DateTime? updatedAt,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  static String get colPath => '/public/contact/v1';

  static String docPath(String contactId) => '$colPath/$contactId';
}
