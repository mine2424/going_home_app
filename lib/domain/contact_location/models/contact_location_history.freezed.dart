// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_location_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactLocationHistory _$ContactLocationHistoryFromJson(
    Map<String, dynamic> json) {
  return _ContactLocationHistory.fromJson(json);
}

/// @nodoc
mixin _$ContactLocationHistory {
  String get reaction => throw _privateConstructorUsedError;
  @ContactLocationConverter()
  List<ContactLocation> get locations => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactLocationHistoryCopyWith<ContactLocationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactLocationHistoryCopyWith<$Res> {
  factory $ContactLocationHistoryCopyWith(ContactLocationHistory value,
          $Res Function(ContactLocationHistory) then) =
      _$ContactLocationHistoryCopyWithImpl<$Res, ContactLocationHistory>;
  @useResult
  $Res call(
      {String reaction,
      @ContactLocationConverter() List<ContactLocation> locations,
      @NullableDatetimeTimestampConverter() DateTime? date});
}

/// @nodoc
class _$ContactLocationHistoryCopyWithImpl<$Res,
        $Val extends ContactLocationHistory>
    implements $ContactLocationHistoryCopyWith<$Res> {
  _$ContactLocationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? locations = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactLocationHistoryCopyWith<$Res>
    implements $ContactLocationHistoryCopyWith<$Res> {
  factory _$$_ContactLocationHistoryCopyWith(_$_ContactLocationHistory value,
          $Res Function(_$_ContactLocationHistory) then) =
      __$$_ContactLocationHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reaction,
      @ContactLocationConverter() List<ContactLocation> locations,
      @NullableDatetimeTimestampConverter() DateTime? date});
}

/// @nodoc
class __$$_ContactLocationHistoryCopyWithImpl<$Res>
    extends _$ContactLocationHistoryCopyWithImpl<$Res,
        _$_ContactLocationHistory>
    implements _$$_ContactLocationHistoryCopyWith<$Res> {
  __$$_ContactLocationHistoryCopyWithImpl(_$_ContactLocationHistory _value,
      $Res Function(_$_ContactLocationHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? locations = null,
    Object? date = freezed,
  }) {
    return _then(_$_ContactLocationHistory(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactLocationHistory implements _ContactLocationHistory {
  const _$_ContactLocationHistory(
      {this.reaction = '',
      @ContactLocationConverter()
          final List<ContactLocation> locations = const <ContactLocation>[],
      @NullableDatetimeTimestampConverter()
          this.date})
      : _locations = locations;

  factory _$_ContactLocationHistory.fromJson(Map<String, dynamic> json) =>
      _$$_ContactLocationHistoryFromJson(json);

  @override
  @JsonKey()
  final String reaction;
  final List<ContactLocation> _locations;
  @override
  @JsonKey()
  @ContactLocationConverter()
  List<ContactLocation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? date;

  @override
  String toString() {
    return 'ContactLocationHistory(reaction: $reaction, locations: $locations, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactLocationHistory &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reaction,
      const DeepCollectionEquality().hash(_locations), date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactLocationHistoryCopyWith<_$_ContactLocationHistory> get copyWith =>
      __$$_ContactLocationHistoryCopyWithImpl<_$_ContactLocationHistory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactLocationHistoryToJson(
      this,
    );
  }
}

abstract class _ContactLocationHistory implements ContactLocationHistory {
  const factory _ContactLocationHistory(
          {final String reaction,
          @ContactLocationConverter() final List<ContactLocation> locations,
          @NullableDatetimeTimestampConverter() final DateTime? date}) =
      _$_ContactLocationHistory;

  factory _ContactLocationHistory.fromJson(Map<String, dynamic> json) =
      _$_ContactLocationHistory.fromJson;

  @override
  String get reaction;
  @override
  @ContactLocationConverter()
  List<ContactLocation> get locations;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_ContactLocationHistoryCopyWith<_$_ContactLocationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
