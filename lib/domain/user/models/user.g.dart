// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String? ?? '',
      tokenId: json['tokenId'] as String? ?? '',
      isAdmin: json['isAdmin'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      contactIds: (json['contactIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      familyContactIds: (json['familyContactIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      name: json['name'] as String? ?? '',
      password: json['password'] as String? ?? '',
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
      occupation: json['occupation'] as String? ?? '',
      sex: json['sex'] == null
          ? Sex.none
          : const SexConverter().fromJson(json['sex'] as String),
      household: json['household'] == null
          ? Household.none
          : const HouseholdConverter().fromJson(json['household'] as String),
      birthday: const NullableDatetimeTimestampConverter()
          .fromJson(json['birthday'] as Timestamp?),
      createdAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'tokenId': instance.tokenId,
      'isAdmin': instance.isAdmin,
      'isDeleted': instance.isDeleted,
      'contactIds': instance.contactIds,
      'familyContactIds': instance.familyContactIds,
      'name': instance.name,
      'password': instance.password,
      'profileImageUrl': instance.profileImageUrl,
      'occupation': instance.occupation,
      'sex': const SexConverter().toJson(instance.sex),
      'household': const HouseholdConverter().toJson(instance.household),
      'birthday':
          const NullableDatetimeTimestampConverter().toJson(instance.birthday),
      'createdAt':
          const NullableDatetimeTimestampConverter().toJson(instance.createdAt),
    };
