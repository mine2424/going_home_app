// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_location_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactLocationHistory _$$_ContactLocationHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_ContactLocationHistory(
      date: json['date'] as String? ?? '',
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => const ContactLocationConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ContactLocation>[],
    );

Map<String, dynamic> _$$_ContactLocationHistoryToJson(
        _$_ContactLocationHistory instance) =>
    <String, dynamic>{
      'date': instance.date,
      'locations': instance.locations
          .map(const ContactLocationConverter().toJson)
          .toList(),
    };
