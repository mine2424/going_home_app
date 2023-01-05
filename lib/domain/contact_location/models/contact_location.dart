import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:location/location.dart';

part 'contact_location.freezed.dart';
part 'contact_location.g.dart';

@freezed
class ContactLocation with _$ContactLocation {
  const factory ContactLocation({
    /// Latitude in degrees
    @Default(0.0) double latitude,

    /// Longitude, in degrees
    @Default(0.0) double longitude,

    /// Estimated horizontal accuracy of this location, radial, in meters
    ///
    /// Always 0 on Web
    @Default(0.0) double accuracy,

    /// Estimated vertical accuracy of this location, in meters.
    @Default(0.0) double verticalAccuracy,

    /// In meters above the WGS 84 reference ellipsoid. Derived from GPS informations.
    ///
    /// Always 0 on Web
    @Default(0.0) double altitude,

    /// In meters/second
    ///
    /// Always 0 on Web
    @Default(0.0) double speed,

    /// In meters/second
    ///
    /// Always 0 on Web
    @Default(0.0) double speedAccuracy,

    /// Heading is the horizontal direction of travel of this device, in degrees
    ///
    /// Always 0 on Web
    @Default(0.0) double heading,

    /// timestamp of the LocationData
    @Default(0.0) double time,

    /// Is the location currently mocked
    ///
    /// Always false on iOS
    @Default(false) bool isMock,

    /// Get the estimated bearing accuracy of this location, in degrees.
    /// Only available on Android
    /// https://developer.android.com/reference/android/location/Location#getBearingAccuracyDegrees()
    @Default(0.0) double headingAccuracy,

    /// Return the time of this fix, in elapsed real-time since system boot.
    /// Only available on Android
    /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeNanos()
    @Default(0.0) double elapsedRealtimeNanos,

    /// Get estimate of the relative precision of the alignment of the ElapsedRealtimeNanos timestamp.
    /// Only available on Android
    /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeUncertaintyNanos()
    @Default(0.0) double elapsedRealtimeUncertaintyNanos,

    /// The number of satellites used to derive the fix.
    /// Only available on Android
    /// https://developer.android.com/reference/android/location/Location#getExtras()
    @Default(0) int satelliteNumber,

    /// The name of the provider that generated this fix.
    /// Only available on Android
    /// https://developer.android.com/reference/android/location/Location#getProvider()
    @Default('') String provider,

    // /// The time when the fix was retrieved.
    @NullableDatetimeTimestampConverter() DateTime? createdAt,
  }) = _ContactLocation;

  factory ContactLocation.fromJson(Map<String, dynamic> json) =>
      _$ContactLocationFromJson(json);

  static ContactLocation toLocation(LocationData locationData) {
    return ContactLocation(
      latitude: locationData.latitude!,
      longitude: locationData.longitude!,
      accuracy: locationData.accuracy!,
      altitude: locationData.altitude!,
      speed: locationData.speed!,
      speedAccuracy: locationData.speedAccuracy!,
      heading: locationData.heading!,
      time: locationData.time!,
      isMock: locationData.isMock!,
      elapsedRealtimeNanos: locationData.elapsedRealtimeNanos ?? 0.0,
    );
  }
}

extension ContactLocationExt on ContactLocation {
  Map<String, dynamic> toDoc(ContactLocation object) => <String, dynamic>{
        ...object.toJson(),
        'createdAt': object.createdAt ?? FieldValue.serverTimestamp(),
        'updatesAt': FieldValue.serverTimestamp(),
      };
}
