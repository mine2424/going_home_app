// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      contactId: json['contactId'] as String? ?? '',
      users: (json['users'] as List<dynamic>?)
              ?.map((e) =>
                  const UserConverter().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
      notifyArea:
          $enumDecodeNullable(_$NotifyAreaEnumMap, json['notifyArea']) ??
              NotifyArea.none,
      isMatched: json['isMatched'] as bool? ?? true,
      word: json['word'] as String? ?? '',
      createdAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp?),
      updatedAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'users': instance.users.map(const UserConverter().toJson).toList(),
      'notifyArea': _$NotifyAreaEnumMap[instance.notifyArea]!,
      'isMatched': instance.isMatched,
      'word': instance.word,
      'createdAt':
          const NullableDatetimeTimestampConverter().toJson(instance.createdAt),
      'updatedAt':
          const NullableDatetimeTimestampConverter().toJson(instance.updatedAt),
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
