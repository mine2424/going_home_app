// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactPageState _$ContactPageStateFromJson(Map<String, dynamic> json) {
  return _ContactPageState.fromJson(json);
}

/// @nodoc
mixin _$ContactPageState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPageStateCopyWith<ContactPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPageStateCopyWith<$Res> {
  factory $ContactPageStateCopyWith(
          ContactPageState value, $Res Function(ContactPageState) then) =
      _$ContactPageStateCopyWithImpl<$Res, ContactPageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ContactPageStateCopyWithImpl<$Res, $Val extends ContactPageState>
    implements $ContactPageStateCopyWith<$Res> {
  _$ContactPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactPageStateCopyWith<$Res>
    implements $ContactPageStateCopyWith<$Res> {
  factory _$$_ContactPageStateCopyWith(
          _$_ContactPageState value, $Res Function(_$_ContactPageState) then) =
      __$$_ContactPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_ContactPageStateCopyWithImpl<$Res>
    extends _$ContactPageStateCopyWithImpl<$Res, _$_ContactPageState>
    implements _$$_ContactPageStateCopyWith<$Res> {
  __$$_ContactPageStateCopyWithImpl(
      _$_ContactPageState _value, $Res Function(_$_ContactPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_ContactPageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactPageState implements _ContactPageState {
  const _$_ContactPageState({this.isLoading = false});

  factory _$_ContactPageState.fromJson(Map<String, dynamic> json) =>
      _$$_ContactPageStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ContactPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactPageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactPageStateCopyWith<_$_ContactPageState> get copyWith =>
      __$$_ContactPageStateCopyWithImpl<_$_ContactPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactPageStateToJson(
      this,
    );
  }
}

abstract class _ContactPageState implements ContactPageState {
  const factory _ContactPageState({final bool isLoading}) = _$_ContactPageState;

  factory _ContactPageState.fromJson(Map<String, dynamic> json) =
      _$_ContactPageState.fromJson;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ContactPageStateCopyWith<_$_ContactPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
