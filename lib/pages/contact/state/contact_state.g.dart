// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactState _$$_ContactStateFromJson(Map<String, dynamic> json) =>
    _$_ContactState(
      isLoading: json['isLoading'] as bool? ?? false,
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) =>
                  const ContactConverter().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Contact>[],
      searchedUsers: (json['searchedUsers'] as List<dynamic>?)
              ?.map((e) =>
                  const UserConverter().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
      deletedContactId: json['deletedContactId'] as String? ?? '',
      selectedContact: json['selectedContact'] == null
          ? const Contact()
          : const ContactConverter()
              .fromJson(json['selectedContact'] as Map<String, dynamic>),
      contactUsers: (json['contactUsers'] as List<dynamic>?)
              ?.map((e) =>
                  const UserConverter().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
      isFavorite: json['isFavorite'] as bool? ?? false,
      notifyArea:
          $enumDecodeNullable(_$NotifyAreaEnumMap, json['notifyArea']) ??
              NotifyArea.none,
      goalLocation: json['goalLocation'] == null
          ? const ContactLocation()
          : const ContactLocationConverter()
              .fromJson(json['goalLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContactStateToJson(_$_ContactState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'contacts':
          instance.contacts.map(const ContactConverter().toJson).toList(),
      'searchedUsers':
          instance.searchedUsers.map(const UserConverter().toJson).toList(),
      'deletedContactId': instance.deletedContactId,
      'selectedContact':
          const ContactConverter().toJson(instance.selectedContact),
      'contactUsers':
          instance.contactUsers.map(const UserConverter().toJson).toList(),
      'isFavorite': instance.isFavorite,
      'notifyArea': _$NotifyAreaEnumMap[instance.notifyArea]!,
      'goalLocation':
          const ContactLocationConverter().toJson(instance.goalLocation),
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
