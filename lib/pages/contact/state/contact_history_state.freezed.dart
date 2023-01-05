// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactHistoryState _$ContactHistoryStateFromJson(Map<String, dynamic> json) {
  return _ContactHistoryState.fromJson(json);
}

/// @nodoc
mixin _$ContactHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  @ContactLocationHistoryConverter()
  List<ContactLocationHistory> get histories =>
      throw _privateConstructorUsedError;
  @ContactLocationConverter()
  List<ContactLocation> get locations => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get currentCreatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactHistoryStateCopyWith<ContactHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactHistoryStateCopyWith<$Res> {
  factory $ContactHistoryStateCopyWith(
          ContactHistoryState value, $Res Function(ContactHistoryState) then) =
      _$ContactHistoryStateCopyWithImpl<$Res, ContactHistoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      @ContactLocationHistoryConverter() List<ContactLocationHistory> histories,
      @ContactLocationConverter() List<ContactLocation> locations,
      @NullableDatetimeTimestampConverter() DateTime? currentCreatedAt});
}

/// @nodoc
class _$ContactHistoryStateCopyWithImpl<$Res, $Val extends ContactHistoryState>
    implements $ContactHistoryStateCopyWith<$Res> {
  _$ContactHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? histories = null,
    Object? locations = null,
    Object? currentCreatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<ContactLocationHistory>,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
      currentCreatedAt: freezed == currentCreatedAt
          ? _value.currentCreatedAt
          : currentCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactHistoryStateCopyWith<$Res>
    implements $ContactHistoryStateCopyWith<$Res> {
  factory _$$_ContactHistoryStateCopyWith(_$_ContactHistoryState value,
          $Res Function(_$_ContactHistoryState) then) =
      __$$_ContactHistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      @ContactLocationHistoryConverter() List<ContactLocationHistory> histories,
      @ContactLocationConverter() List<ContactLocation> locations,
      @NullableDatetimeTimestampConverter() DateTime? currentCreatedAt});
}

/// @nodoc
class __$$_ContactHistoryStateCopyWithImpl<$Res>
    extends _$ContactHistoryStateCopyWithImpl<$Res, _$_ContactHistoryState>
    implements _$$_ContactHistoryStateCopyWith<$Res> {
  __$$_ContactHistoryStateCopyWithImpl(_$_ContactHistoryState _value,
      $Res Function(_$_ContactHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? histories = null,
    Object? locations = null,
    Object? currentCreatedAt = freezed,
  }) {
    return _then(_$_ContactHistoryState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<ContactLocationHistory>,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
      currentCreatedAt: freezed == currentCreatedAt
          ? _value.currentCreatedAt
          : currentCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactHistoryState implements _ContactHistoryState {
  const _$_ContactHistoryState(
      {this.isLoading = false,
      @ContactLocationHistoryConverter()
          final List<ContactLocationHistory>
              histories = const <ContactLocationHistory>[],
      @ContactLocationConverter()
          final List<ContactLocation> locations = const <ContactLocation>[],
      @NullableDatetimeTimestampConverter()
          this.currentCreatedAt})
      : _histories = histories,
        _locations = locations;

  factory _$_ContactHistoryState.fromJson(Map<String, dynamic> json) =>
      _$$_ContactHistoryStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ContactLocationHistory> _histories;
  @override
  @JsonKey()
  @ContactLocationHistoryConverter()
  List<ContactLocationHistory> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

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
  final DateTime? currentCreatedAt;

  @override
  String toString() {
    return 'ContactHistoryState(isLoading: $isLoading, histories: $histories, locations: $locations, currentCreatedAt: $currentCreatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactHistoryState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.currentCreatedAt, currentCreatedAt) ||
                other.currentCreatedAt == currentCreatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_histories),
      const DeepCollectionEquality().hash(_locations),
      currentCreatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactHistoryStateCopyWith<_$_ContactHistoryState> get copyWith =>
      __$$_ContactHistoryStateCopyWithImpl<_$_ContactHistoryState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactHistoryStateToJson(
      this,
    );
  }
}

abstract class _ContactHistoryState implements ContactHistoryState {
  const factory _ContactHistoryState(
      {final bool isLoading,
      @ContactLocationHistoryConverter()
          final List<ContactLocationHistory> histories,
      @ContactLocationConverter()
          final List<ContactLocation> locations,
      @NullableDatetimeTimestampConverter()
          final DateTime? currentCreatedAt}) = _$_ContactHistoryState;

  factory _ContactHistoryState.fromJson(Map<String, dynamic> json) =
      _$_ContactHistoryState.fromJson;

  @override
  bool get isLoading;
  @override
  @ContactLocationHistoryConverter()
  List<ContactLocationHistory> get histories;
  @override
  @ContactLocationConverter()
  List<ContactLocation> get locations;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get currentCreatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContactHistoryStateCopyWith<_$_ContactHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
