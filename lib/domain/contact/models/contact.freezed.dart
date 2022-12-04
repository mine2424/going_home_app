// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String get contactId => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  NotifyArea get notifyArea =>
      throw _privateConstructorUsedError; // TODO: localの永続化DBに保存する必要があるかも
  bool get alreadyNotified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {String contactId,
      List<String> userIds,
      NotifyArea notifyArea,
      bool alreadyNotified});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? userIds = null,
    Object? notifyArea = null,
    Object? alreadyNotified = null,
  }) {
    return _then(_value.copyWith(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      alreadyNotified: null == alreadyNotified
          ? _value.alreadyNotified
          : alreadyNotified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contactId,
      List<String> userIds,
      NotifyArea notifyArea,
      bool alreadyNotified});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? userIds = null,
    Object? notifyArea = null,
    Object? alreadyNotified = null,
  }) {
    return _then(_$_Contact(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      alreadyNotified: null == alreadyNotified
          ? _value.alreadyNotified
          : alreadyNotified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact(
      {this.contactId = '',
      final List<String> userIds = const <String>[],
      this.notifyArea = NotifyArea.none,
      this.alreadyNotified = false})
      : _userIds = userIds;

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  @JsonKey()
  final String contactId;
  final List<String> _userIds;
  @override
  @JsonKey()
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  @JsonKey()
  final NotifyArea notifyArea;
// TODO: localの永続化DBに保存する必要があるかも
  @override
  @JsonKey()
  final bool alreadyNotified;

  @override
  String toString() {
    return 'Contact(contactId: $contactId, userIds: $userIds, notifyArea: $notifyArea, alreadyNotified: $alreadyNotified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.notifyArea, notifyArea) ||
                other.notifyArea == notifyArea) &&
            (identical(other.alreadyNotified, alreadyNotified) ||
                other.alreadyNotified == alreadyNotified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactId,
      const DeepCollectionEquality().hash(_userIds),
      notifyArea,
      alreadyNotified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final String contactId,
      final List<String> userIds,
      final NotifyArea notifyArea,
      final bool alreadyNotified}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String get contactId;
  @override
  List<String> get userIds;
  @override
  NotifyArea get notifyArea;
  @override // TODO: localの永続化DBに保存する必要があるかも
  bool get alreadyNotified;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
