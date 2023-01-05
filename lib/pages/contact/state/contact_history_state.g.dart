// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_history_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactHistoryState _$$_ContactHistoryStateFromJson(
        Map<String, dynamic> json) =>
    _$_ContactHistoryState(
      isLoading: json['isLoading'] as bool? ?? false,
      histories: (json['histories'] as List<dynamic>?)
              ?.map((e) => const ContactLocationHistoryConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ContactLocationHistory>[],
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => const ContactLocationConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ContactLocation>[],
      currentCreatedAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['currentCreatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ContactHistoryStateToJson(
        _$_ContactHistoryState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'histories': instance.histories
          .map(const ContactLocationHistoryConverter().toJson)
          .toList(),
      'locations': instance.locations
          .map(const ContactLocationConverter().toJson)
          .toList(),
      'currentCreatedAt': const NullableDatetimeTimestampConverter()
          .toJson(instance.currentCreatedAt),
    };
