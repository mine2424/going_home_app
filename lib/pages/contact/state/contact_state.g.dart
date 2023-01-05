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
    );

Map<String, dynamic> _$$_ContactStateToJson(_$_ContactState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'contacts':
          instance.contacts.map(const ContactConverter().toJson).toList(),
    };
