// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String? ?? '',
      originalId: json['originalId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      tokenId: json['tokenId'] as String? ?? '',
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'originalId': instance.originalId,
      'name': instance.name,
      'tokenId': instance.tokenId,
      'profileImageUrl': instance.profileImageUrl,
    };
