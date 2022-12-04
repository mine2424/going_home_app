// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      contactId: json['contactId'] as String? ?? '',
      userIds: (json['userIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      notifyArea:
          $enumDecodeNullable(_$NotifyAreaEnumMap, json['notifyArea']) ??
              NotifyArea.none,
      alreadyNotified: json['alreadyNotified'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'userIds': instance.userIds,
      'notifyArea': _$NotifyAreaEnumMap[instance.notifyArea]!,
      'alreadyNotified': instance.alreadyNotified,
    };

const _$NotifyAreaEnumMap = {
  NotifyArea.none: 'none',
  NotifyArea.error: 'error',
  NotifyArea.loading: 'loading',
  NotifyArea.veryNear: 'veryNear',
  NotifyArea.near: 'near',
  NotifyArea.normal: 'normal',
  NotifyArea.far: 'far',
  NotifyArea.veryFar: 'veryFar',
};
