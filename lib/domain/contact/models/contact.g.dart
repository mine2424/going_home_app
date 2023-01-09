// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      contactId: json['contactId'] as String? ?? '',
      word: json['word'] as String? ?? '',
      contactName: json['contactName'] as String? ?? '',
      isMatched: json['isMatched'] as bool? ?? true,
      sentUser: json['sentUser'] == null
          ? const User()
          : const UserConverter()
              .fromJson(json['sentUser'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
      notifyArea:
          $enumDecodeNullable(_$NotifyAreaEnumMap, json['notifyArea']) ??
              NotifyArea.none,
      users: (json['users'] as List<dynamic>?)
              ?.map((e) =>
                  const UserConverter().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
      currentGoalLocation: json['currentGoalLocation'] == null
          ? const ContactLocation()
          : const ContactLocationConverter()
              .fromJson(json['currentGoalLocation'] as Map<String, dynamic>),
      goalLocationList: (json['goalLocationList'] as List<dynamic>?)
              ?.map((e) => const ContactLocationConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ContactLocation>[],
      createdAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp?),
      updatedAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'word': instance.word,
      'contactName': instance.contactName,
      'isMatched': instance.isMatched,
      'sentUser': const UserConverter().toJson(instance.sentUser),
      'isFavorite': instance.isFavorite,
      'notifyArea': _$NotifyAreaEnumMap[instance.notifyArea]!,
      'users': instance.users.map(const UserConverter().toJson).toList(),
      'currentGoalLocation':
          const ContactLocationConverter().toJson(instance.currentGoalLocation),
      'goalLocationList': instance.goalLocationList
          .map(const ContactLocationConverter().toJson)
          .toList(),
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
