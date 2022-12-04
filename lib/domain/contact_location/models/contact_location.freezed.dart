// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactLocation _$ContactLocationFromJson(Map<String, dynamic> json) {
  return _ContactLocation.fromJson(json);
}

/// @nodoc
mixin _$ContactLocation {
  /// Latitude in degrees
  double get latitude => throw _privateConstructorUsedError;

  /// Longitude, in degrees
  double get longitude => throw _privateConstructorUsedError;

  /// Estimated horizontal accuracy of this location, radial, in meters
  ///
  /// Always 0 on Web
  double get accuracy => throw _privateConstructorUsedError;

  /// Estimated vertical accuracy of this location, in meters.
  double get verticalAccuracy => throw _privateConstructorUsedError;

  /// In meters above the WGS 84 reference ellipsoid. Derived from GPS informations.
  ///
  /// Always 0 on Web
  double get altitude => throw _privateConstructorUsedError;

  /// In meters/second
  ///
  /// Always 0 on Web
  double get speed => throw _privateConstructorUsedError;

  /// In meters/second
  ///
  /// Always 0 on Web
  double get speedAccuracy => throw _privateConstructorUsedError;

  /// Heading is the horizontal direction of travel of this device, in degrees
  ///
  /// Always 0 on Web
// @Default(0.0) double heading,
  /// timestamp of the LocationData
  double get time => throw _privateConstructorUsedError;

  /// Is the location currently mocked
  ///
  /// Always false on iOS
  bool get isMock => throw _privateConstructorUsedError;

  /// Get the estimated bearing accuracy of this location, in degrees.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getBearingAccuracyDegrees()
  double get headingAccuracy => throw _privateConstructorUsedError;

  /// Return the time of this fix, in elapsed real-time since system boot.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeNanos()
  double get elapsedRealtimeNanos => throw _privateConstructorUsedError;

  /// Get estimate of the relative precision of the alignment of the ElapsedRealtimeNanos timestamp.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeUncertaintyNanos()
  double get elapsedRealtimeUncertaintyNanos =>
      throw _privateConstructorUsedError;

  /// The number of satellites used to derive the fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getExtras()
  int get satelliteNumber => throw _privateConstructorUsedError;

  /// The name of the provider that generated this fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getProvider()
  String get provider =>
      throw _privateConstructorUsedError; // /// The time when the fix was retrieved.
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactLocationCopyWith<ContactLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactLocationCopyWith<$Res> {
  factory $ContactLocationCopyWith(
          ContactLocation value, $Res Function(ContactLocation) then) =
      _$ContactLocationCopyWithImpl<$Res, ContactLocation>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double accuracy,
      double verticalAccuracy,
      double altitude,
      double speed,
      double speedAccuracy,
      double time,
      bool isMock,
      double headingAccuracy,
      double elapsedRealtimeNanos,
      double elapsedRealtimeUncertaintyNanos,
      int satelliteNumber,
      String provider,
      @NullableDatetimeTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$ContactLocationCopyWithImpl<$Res, $Val extends ContactLocation>
    implements $ContactLocationCopyWith<$Res> {
  _$ContactLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? accuracy = null,
    Object? verticalAccuracy = null,
    Object? altitude = null,
    Object? speed = null,
    Object? speedAccuracy = null,
    Object? time = null,
    Object? isMock = null,
    Object? headingAccuracy = null,
    Object? elapsedRealtimeNanos = null,
    Object? elapsedRealtimeUncertaintyNanos = null,
    Object? satelliteNumber = null,
    Object? provider = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      verticalAccuracy: null == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: null == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      speedAccuracy: null == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      isMock: null == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool,
      headingAccuracy: null == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedRealtimeNanos: null == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedRealtimeUncertaintyNanos: null == elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double,
      satelliteNumber: null == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactLocationCopyWith<$Res>
    implements $ContactLocationCopyWith<$Res> {
  factory _$$_ContactLocationCopyWith(
          _$_ContactLocation value, $Res Function(_$_ContactLocation) then) =
      __$$_ContactLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double accuracy,
      double verticalAccuracy,
      double altitude,
      double speed,
      double speedAccuracy,
      double time,
      bool isMock,
      double headingAccuracy,
      double elapsedRealtimeNanos,
      double elapsedRealtimeUncertaintyNanos,
      int satelliteNumber,
      String provider,
      @NullableDatetimeTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$_ContactLocationCopyWithImpl<$Res>
    extends _$ContactLocationCopyWithImpl<$Res, _$_ContactLocation>
    implements _$$_ContactLocationCopyWith<$Res> {
  __$$_ContactLocationCopyWithImpl(
      _$_ContactLocation _value, $Res Function(_$_ContactLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? accuracy = null,
    Object? verticalAccuracy = null,
    Object? altitude = null,
    Object? speed = null,
    Object? speedAccuracy = null,
    Object? time = null,
    Object? isMock = null,
    Object? headingAccuracy = null,
    Object? elapsedRealtimeNanos = null,
    Object? elapsedRealtimeUncertaintyNanos = null,
    Object? satelliteNumber = null,
    Object? provider = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ContactLocation(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      verticalAccuracy: null == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: null == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      speedAccuracy: null == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      isMock: null == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool,
      headingAccuracy: null == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedRealtimeNanos: null == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double,
      elapsedRealtimeUncertaintyNanos: null == elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double,
      satelliteNumber: null == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactLocation implements _ContactLocation {
  const _$_ContactLocation(
      {this.latitude = 0.0,
      this.longitude = 0.0,
      this.accuracy = 0.0,
      this.verticalAccuracy = 0.0,
      this.altitude = 0.0,
      this.speed = 0.0,
      this.speedAccuracy = 0.0,
      this.time = 0.0,
      this.isMock = false,
      this.headingAccuracy = 0.0,
      this.elapsedRealtimeNanos = 0.0,
      this.elapsedRealtimeUncertaintyNanos = 0.0,
      this.satelliteNumber = 0,
      this.provider = '',
      @NullableDatetimeTimestampConverter() this.createdAt});

  factory _$_ContactLocation.fromJson(Map<String, dynamic> json) =>
      _$$_ContactLocationFromJson(json);

  /// Latitude in degrees
  @override
  @JsonKey()
  final double latitude;

  /// Longitude, in degrees
  @override
  @JsonKey()
  final double longitude;

  /// Estimated horizontal accuracy of this location, radial, in meters
  ///
  /// Always 0 on Web
  @override
  @JsonKey()
  final double accuracy;

  /// Estimated vertical accuracy of this location, in meters.
  @override
  @JsonKey()
  final double verticalAccuracy;

  /// In meters above the WGS 84 reference ellipsoid. Derived from GPS informations.
  ///
  /// Always 0 on Web
  @override
  @JsonKey()
  final double altitude;

  /// In meters/second
  ///
  /// Always 0 on Web
  @override
  @JsonKey()
  final double speed;

  /// In meters/second
  ///
  /// Always 0 on Web
  @override
  @JsonKey()
  final double speedAccuracy;

  /// Heading is the horizontal direction of travel of this device, in degrees
  ///
  /// Always 0 on Web
// @Default(0.0) double heading,
  /// timestamp of the LocationData
  @override
  @JsonKey()
  final double time;

  /// Is the location currently mocked
  ///
  /// Always false on iOS
  @override
  @JsonKey()
  final bool isMock;

  /// Get the estimated bearing accuracy of this location, in degrees.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getBearingAccuracyDegrees()
  @override
  @JsonKey()
  final double headingAccuracy;

  /// Return the time of this fix, in elapsed real-time since system boot.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeNanos()
  @override
  @JsonKey()
  final double elapsedRealtimeNanos;

  /// Get estimate of the relative precision of the alignment of the ElapsedRealtimeNanos timestamp.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeUncertaintyNanos()
  @override
  @JsonKey()
  final double elapsedRealtimeUncertaintyNanos;

  /// The number of satellites used to derive the fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getExtras()
  @override
  @JsonKey()
  final int satelliteNumber;

  /// The name of the provider that generated this fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getProvider()
  @override
  @JsonKey()
  final String provider;
// /// The time when the fix was retrieved.
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ContactLocation(latitude: $latitude, longitude: $longitude, accuracy: $accuracy, verticalAccuracy: $verticalAccuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy, time: $time, isMock: $isMock, headingAccuracy: $headingAccuracy, elapsedRealtimeNanos: $elapsedRealtimeNanos, elapsedRealtimeUncertaintyNanos: $elapsedRealtimeUncertaintyNanos, satelliteNumber: $satelliteNumber, provider: $provider, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactLocation &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.verticalAccuracy, verticalAccuracy) ||
                other.verticalAccuracy == verticalAccuracy) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                other.speedAccuracy == speedAccuracy) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isMock, isMock) || other.isMock == isMock) &&
            (identical(other.headingAccuracy, headingAccuracy) ||
                other.headingAccuracy == headingAccuracy) &&
            (identical(other.elapsedRealtimeNanos, elapsedRealtimeNanos) ||
                other.elapsedRealtimeNanos == elapsedRealtimeNanos) &&
            (identical(other.elapsedRealtimeUncertaintyNanos,
                    elapsedRealtimeUncertaintyNanos) ||
                other.elapsedRealtimeUncertaintyNanos ==
                    elapsedRealtimeUncertaintyNanos) &&
            (identical(other.satelliteNumber, satelliteNumber) ||
                other.satelliteNumber == satelliteNumber) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      accuracy,
      verticalAccuracy,
      altitude,
      speed,
      speedAccuracy,
      time,
      isMock,
      headingAccuracy,
      elapsedRealtimeNanos,
      elapsedRealtimeUncertaintyNanos,
      satelliteNumber,
      provider,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactLocationCopyWith<_$_ContactLocation> get copyWith =>
      __$$_ContactLocationCopyWithImpl<_$_ContactLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactLocationToJson(
      this,
    );
  }
}

abstract class _ContactLocation implements ContactLocation {
  const factory _ContactLocation(
          {final double latitude,
          final double longitude,
          final double accuracy,
          final double verticalAccuracy,
          final double altitude,
          final double speed,
          final double speedAccuracy,
          final double time,
          final bool isMock,
          final double headingAccuracy,
          final double elapsedRealtimeNanos,
          final double elapsedRealtimeUncertaintyNanos,
          final int satelliteNumber,
          final String provider,
          @NullableDatetimeTimestampConverter() final DateTime? createdAt}) =
      _$_ContactLocation;

  factory _ContactLocation.fromJson(Map<String, dynamic> json) =
      _$_ContactLocation.fromJson;

  @override

  /// Latitude in degrees
  double get latitude;
  @override

  /// Longitude, in degrees
  double get longitude;
  @override

  /// Estimated horizontal accuracy of this location, radial, in meters
  ///
  /// Always 0 on Web
  double get accuracy;
  @override

  /// Estimated vertical accuracy of this location, in meters.
  double get verticalAccuracy;
  @override

  /// In meters above the WGS 84 reference ellipsoid. Derived from GPS informations.
  ///
  /// Always 0 on Web
  double get altitude;
  @override

  /// In meters/second
  ///
  /// Always 0 on Web
  double get speed;
  @override

  /// In meters/second
  ///
  /// Always 0 on Web
  double get speedAccuracy;
  @override

  /// Heading is the horizontal direction of travel of this device, in degrees
  ///
  /// Always 0 on Web
// @Default(0.0) double heading,
  /// timestamp of the LocationData
  double get time;
  @override

  /// Is the location currently mocked
  ///
  /// Always false on iOS
  bool get isMock;
  @override

  /// Get the estimated bearing accuracy of this location, in degrees.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getBearingAccuracyDegrees()
  double get headingAccuracy;
  @override

  /// Return the time of this fix, in elapsed real-time since system boot.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeNanos()
  double get elapsedRealtimeNanos;
  @override

  /// Get estimate of the relative precision of the alignment of the ElapsedRealtimeNanos timestamp.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getElapsedRealtimeUncertaintyNanos()
  double get elapsedRealtimeUncertaintyNanos;
  @override

  /// The number of satellites used to derive the fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getExtras()
  int get satelliteNumber;
  @override

  /// The name of the provider that generated this fix.
  /// Only available on Android
  /// https://developer.android.com/reference/android/location/Location#getProvider()
  String get provider;
  @override // /// The time when the fix was retrieved.
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContactLocationCopyWith<_$_ContactLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
