// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_location_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactLocationHistory _$$_ContactLocationHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_ContactLocationHistory(
      reaction: json['reaction'] as String? ?? '',
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => const ContactLocationConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ContactLocation>[],
      date: const NullableDatetimeTimestampConverter()
          .fromJson(json['date'] as Timestamp?),
    );

Map<String, dynamic> _$$_ContactLocationHistoryToJson(
        _$_ContactLocationHistory instance) =>
    <String, dynamic>{
      'reaction': instance.reaction,
      'locations': instance.locations
          .map(const ContactLocationConverter().toJson)
          .toList(),
      'date': const NullableDatetimeTimestampConverter().toJson(instance.date),
    };
