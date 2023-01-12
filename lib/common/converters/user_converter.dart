import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/domain/user/enum/household.dart';
import 'package:going_home_app/domain/user/enum/sex.dart';
import 'package:going_home_app/domain/user/models/user.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class UserConverter implements JsonConverter<User, Map<String, dynamic>> {
  const UserConverter();

  @override
  User fromJson(Map<String, dynamic> value) {
    return User(
      uid: value['uid'] as String,
      tokenId: value['tokenId'] as String,
      isAdmin: value['isAdmin'] as bool,
      isDeleted: value['isDeleted'] as bool,
      contactIds: value['contactIds'].cast<String>() as List<String>,
      familyContactIds:
          value['familyContactIds'].cast<String>() as List<String>,
      name: value['name'] as String,
      profileImageUrl: value['profileImageUrl'] as String,
      occupation: value['occupation'] as String,
      // sex: value['sex'] as Sex,
      // household: value['household'] as Household,
      birthday: const NullableDatetimeTimestampConverter()
          .fromJson(value['birthday']),
      createdAt: const NullableDatetimeTimestampConverter()
          .fromJson(value['createdAt']),
      // createdAt: value['createdAt'] as DateTime?,
    );
  }

  @override
  Map<String, dynamic> toJson(User object) {
    return <String, dynamic>{
      'uid': object.uid,
      'tokenId': object.tokenId,
      'isAdmin': object.isAdmin,
      'isDeleted': object.isDeleted,
      'contactIds': object.contactIds,
      'familyContactIds': object.familyContactIds,
      'name': object.name,
      'profileImageUrl': object.profileImageUrl,
      'occupation': object.occupation,
      // 'sex': object.sex,
      // 'household': object.household,
      'birthday': object.birthday,
      'createdAt': object.createdAt,
    };
  }
}
