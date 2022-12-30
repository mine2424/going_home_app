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
  @UserConverter()
  List<User> get users => throw _privateConstructorUsedError;
  NotifyArea get notifyArea =>
      throw _privateConstructorUsedError; // 到着したかどうか（offの場合はtrue）
  bool get isMatched => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      @UserConverter() List<User> users,
      NotifyArea notifyArea,
      bool isMatched,
      String word,
      @NullableDatetimeTimestampConverter() DateTime? createdAt,
      @NullableDatetimeTimestampConverter() DateTime? updatedAt});
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
    Object? users = null,
    Object? notifyArea = null,
    Object? isMatched = null,
    Object? word = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @UserConverter() List<User> users,
      NotifyArea notifyArea,
      bool isMatched,
      String word,
      @NullableDatetimeTimestampConverter() DateTime? createdAt,
      @NullableDatetimeTimestampConverter() DateTime? updatedAt});
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
    Object? users = null,
    Object? notifyArea = null,
    Object? isMatched = null,
    Object? word = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Contact(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact(
      {this.contactId = '',
      @UserConverter() final List<User> users = const <User>[],
      this.notifyArea = NotifyArea.none,
      this.isMatched = true,
      this.word = '',
      @NullableDatetimeTimestampConverter() this.createdAt,
      @NullableDatetimeTimestampConverter() this.updatedAt})
      : _users = users;

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  @JsonKey()
  final String contactId;
  final List<User> _users;
  @override
  @JsonKey()
  @UserConverter()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final NotifyArea notifyArea;
// 到着したかどうか（offの場合はtrue）
  @override
  @JsonKey()
  final bool isMatched;
  @override
  @JsonKey()
  final String word;
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Contact(contactId: $contactId, users: $users, notifyArea: $notifyArea, isMatched: $isMatched, word: $word, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.notifyArea, notifyArea) ||
                other.notifyArea == notifyArea) &&
            (identical(other.isMatched, isMatched) ||
                other.isMatched == isMatched) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactId,
      const DeepCollectionEquality().hash(_users),
      notifyArea,
      isMatched,
      word,
      createdAt,
      updatedAt);

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
          @UserConverter() final List<User> users,
          final NotifyArea notifyArea,
          final bool isMatched,
          final String word,
          @NullableDatetimeTimestampConverter() final DateTime? createdAt,
          @NullableDatetimeTimestampConverter() final DateTime? updatedAt}) =
      _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String get contactId;
  @override
  @UserConverter()
  List<User> get users;
  @override
  NotifyArea get notifyArea;
  @override // 到着したかどうか（offの場合はtrue）
  bool get isMatched;
  @override
  String get word;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
