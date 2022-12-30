import 'package:freezed_annotation/freezed_annotation.dart';
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
      contactIds: value['contactIds'] as List<String>,
      familyContactIds: value['familyContactIds'] as List<String>,
      name: value['name'] as String,
      password: value['password'] as String,
      profileImageUrl: value['profileImageUrl'] as String,
      occupation: value['occupation'] as String,
      sex: value['sex'] as Sex,
      household: value['household'] as Household,
      birthday: value['birthday'] as DateTime?,
      createdAt: value['createdAt'] as DateTime?,
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
      'password': object.password,
      'profileImageUrl': object.profileImageUrl,
      'occupation': object.occupation,
      'sex': object.sex,
      'household': object.household,
      'birthday': object.birthday,
      'createdAt': object.createdAt,
    };
  }
}
