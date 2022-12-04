import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class ContactLocationConverter
    implements JsonConverter<ContactLocation, Map<String, dynamic>> {
  const ContactLocationConverter();

  @override
  ContactLocation fromJson(Map<String, dynamic> value) {
    return ContactLocation(
      latitude: value['latitude'] as double,
      longitude: value['longitude'] as double,
      accuracy: value['accuracy'] as double,
      verticalAccuracy: value['verticalAccuracy'] as double,
      altitude: value['altitude'] as double,
      speed: value['speed'] as double,
      speedAccuracy: value['speedAccuracy'] as double,
      // heading: value['heading'] as double,
      time: value['time'] as double,
      isMock: value['isMock'] as bool,
      headingAccuracy: value['headingAccuracy'] as double,
      elapsedRealtimeNanos: value['elapsedRealtimeNanos'] as double,
      elapsedRealtimeUncertaintyNanos:
          value['elapsedRealtimeUncertaintyNanos'] as double,
      satelliteNumber: value['satelliteNumber'] as int,
      provider: value['provider'] as String,
      createdAt: value['createdAt'] as DateTime,
    );
  }

  @override
  Map<String, dynamic> toJson(ContactLocation object) {
    return <String, dynamic>{
      'latitude': object.latitude,
      'longitude': object.longitude,
      'accuracy': object.accuracy,
      'verticalAccuracy': object.verticalAccuracy,
      'altitude': object.altitude,
      'speed': object.speed,
      'speedAccuracy': object.speedAccuracy,
      // 'heading': object.heading,
      'time': object.time,
      'isMock': object.isMock,
      'headingAccuracy': object.headingAccuracy,
      'elapsedRealtimeNanos': object.elapsedRealtimeNanos,
      'elapsedRealtimeUncertaintyNanos': object.elapsedRealtimeUncertaintyNanos,
      'satelliteNumber': object.satelliteNumber,
      'provider': object.provider,
      'createdAt': object.createdAt,
    };
  }
}
