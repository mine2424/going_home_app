// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactLocation _$$_ContactLocationFromJson(Map<String, dynamic> json) =>
    _$_ContactLocation(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      accuracy: (json['accuracy'] as num?)?.toDouble() ?? 0.0,
      verticalAccuracy: (json['verticalAccuracy'] as num?)?.toDouble() ?? 0.0,
      altitude: (json['altitude'] as num?)?.toDouble() ?? 0.0,
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
      speedAccuracy: (json['speedAccuracy'] as num?)?.toDouble() ?? 0.0,
      heading: (json['heading'] as num?)?.toDouble() ?? 0.0,
      time: (json['time'] as num?)?.toDouble() ?? 0.0,
      isMock: json['isMock'] as bool? ?? false,
      headingAccuracy: (json['headingAccuracy'] as num?)?.toDouble() ?? 0.0,
      elapsedRealtimeNanos:
          (json['elapsedRealtimeNanos'] as num?)?.toDouble() ?? 0.0,
      elapsedRealtimeUncertaintyNanos:
          (json['elapsedRealtimeUncertaintyNanos'] as num?)?.toDouble() ?? 0.0,
      satelliteNumber: json['satelliteNumber'] as int? ?? 0,
      provider: json['provider'] as String? ?? '',
      createdAt: const NullableDatetimeTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ContactLocationToJson(_$_ContactLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
      'verticalAccuracy': instance.verticalAccuracy,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'speedAccuracy': instance.speedAccuracy,
      'heading': instance.heading,
      'time': instance.time,
      'isMock': instance.isMock,
      'headingAccuracy': instance.headingAccuracy,
      'elapsedRealtimeNanos': instance.elapsedRealtimeNanos,
      'elapsedRealtimeUncertaintyNanos':
          instance.elapsedRealtimeUncertaintyNanos,
      'satelliteNumber': instance.satelliteNumber,
      'provider': instance.provider,
      'createdAt':
          const NullableDatetimeTimestampConverter().toJson(instance.createdAt),
    };
