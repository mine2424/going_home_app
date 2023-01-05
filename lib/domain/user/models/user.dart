import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/domain/user/enum/household.dart';
import 'package:going_home_app/domain/user/enum/sex.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String uid,
    @Default('') String tokenId,
    @Default(false) bool isAdmin,
    @Default(false) bool isDeleted,
    @Default(<String>[]) List<String> contactIds,
    @Default(<String>[]) List<String> familyContactIds,
    @Default('') String name,
    @Default('') String profileImageUrl,
    @Default('') String occupation,
    @SexConverter() @Default(Sex.none) Sex sex,
    @HouseholdConverter() @Default(Household.none) Household household,
    @NullableDatetimeTimestampConverter() DateTime? birthday,
    @NullableDatetimeTimestampConverter() DateTime? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static String get colPath => '/private/users/v1';

  static String docPath(String uid) => '$colPath/$uid';
}
