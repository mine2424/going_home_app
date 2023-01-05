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
  String get word => throw _privateConstructorUsedError;
  String get contactName =>
      throw _privateConstructorUsedError; // 到着したかどうか（offの場合はtrue）
  bool get isMatched => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  NotifyArea get notifyArea => throw _privateConstructorUsedError;
  @UserConverter()
  List<User> get users => throw _privateConstructorUsedError;
  @ContactLocationConverter()
  ContactLocation get currentGoalLocation => throw _privateConstructorUsedError;
  @ContactLocationConverter()
  List<ContactLocation> get goalLocationList =>
      throw _privateConstructorUsedError;
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
      String word,
      String contactName,
      bool isMatched,
      bool isFavorite,
      NotifyArea notifyArea,
      @UserConverter() List<User> users,
      @ContactLocationConverter() ContactLocation currentGoalLocation,
      @ContactLocationConverter() List<ContactLocation> goalLocationList,
      @NullableDatetimeTimestampConverter() DateTime? createdAt,
      @NullableDatetimeTimestampConverter() DateTime? updatedAt});

  $ContactLocationCopyWith<$Res> get currentGoalLocation;
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
    Object? word = null,
    Object? contactName = null,
    Object? isMatched = null,
    Object? isFavorite = null,
    Object? notifyArea = null,
    Object? users = null,
    Object? currentGoalLocation = null,
    Object? goalLocationList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentGoalLocation: null == currentGoalLocation
          ? _value.currentGoalLocation
          : currentGoalLocation // ignore: cast_nullable_to_non_nullable
              as ContactLocation,
      goalLocationList: null == goalLocationList
          ? _value.goalLocationList
          : goalLocationList // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
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

  @override
  @pragma('vm:prefer-inline')
  $ContactLocationCopyWith<$Res> get currentGoalLocation {
    return $ContactLocationCopyWith<$Res>(_value.currentGoalLocation, (value) {
      return _then(_value.copyWith(currentGoalLocation: value) as $Val);
    });
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
      String word,
      String contactName,
      bool isMatched,
      bool isFavorite,
      NotifyArea notifyArea,
      @UserConverter() List<User> users,
      @ContactLocationConverter() ContactLocation currentGoalLocation,
      @ContactLocationConverter() List<ContactLocation> goalLocationList,
      @NullableDatetimeTimestampConverter() DateTime? createdAt,
      @NullableDatetimeTimestampConverter() DateTime? updatedAt});

  @override
  $ContactLocationCopyWith<$Res> get currentGoalLocation;
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
    Object? word = null,
    Object? contactName = null,
    Object? isMatched = null,
    Object? isFavorite = null,
    Object? notifyArea = null,
    Object? users = null,
    Object? currentGoalLocation = null,
    Object? goalLocationList = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Contact(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentGoalLocation: null == currentGoalLocation
          ? _value.currentGoalLocation
          : currentGoalLocation // ignore: cast_nullable_to_non_nullable
              as ContactLocation,
      goalLocationList: null == goalLocationList
          ? _value._goalLocationList
          : goalLocationList // ignore: cast_nullable_to_non_nullable
              as List<ContactLocation>,
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
      this.word = '',
      this.contactName = '',
      this.isMatched = true,
      this.isFavorite = false,
      this.notifyArea = NotifyArea.none,
      @UserConverter() final List<User> users = const <User>[],
      @ContactLocationConverter() this.currentGoalLocation =
          const ContactLocation(),
      @ContactLocationConverter() final List<ContactLocation> goalLocationList =
          const <ContactLocation>[],
      @NullableDatetimeTimestampConverter() this.createdAt,
      @NullableDatetimeTimestampConverter() this.updatedAt})
      : _users = users,
        _goalLocationList = goalLocationList;

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  @JsonKey()
  final String contactId;
  @override
  @JsonKey()
  final String word;
  @override
  @JsonKey()
  final String contactName;
// 到着したかどうか（offの場合はtrue）
  @override
  @JsonKey()
  final bool isMatched;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final NotifyArea notifyArea;
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
  @ContactLocationConverter()
  final ContactLocation currentGoalLocation;
  final List<ContactLocation> _goalLocationList;
  @override
  @JsonKey()
  @ContactLocationConverter()
  List<ContactLocation> get goalLocationList {
    if (_goalLocationList is EqualUnmodifiableListView)
      return _goalLocationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goalLocationList);
  }

  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? createdAt;
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Contact(contactId: $contactId, word: $word, contactName: $contactName, isMatched: $isMatched, isFavorite: $isFavorite, notifyArea: $notifyArea, users: $users, currentGoalLocation: $currentGoalLocation, goalLocationList: $goalLocationList, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.isMatched, isMatched) ||
                other.isMatched == isMatched) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.notifyArea, notifyArea) ||
                other.notifyArea == notifyArea) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentGoalLocation, currentGoalLocation) ||
                other.currentGoalLocation == currentGoalLocation) &&
            const DeepCollectionEquality()
                .equals(other._goalLocationList, _goalLocationList) &&
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
      word,
      contactName,
      isMatched,
      isFavorite,
      notifyArea,
      const DeepCollectionEquality().hash(_users),
      currentGoalLocation,
      const DeepCollectionEquality().hash(_goalLocationList),
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
      final String word,
      final String contactName,
      final bool isMatched,
      final bool isFavorite,
      final NotifyArea notifyArea,
      @UserConverter()
          final List<User> users,
      @ContactLocationConverter()
          final ContactLocation currentGoalLocation,
      @ContactLocationConverter()
          final List<ContactLocation> goalLocationList,
      @NullableDatetimeTimestampConverter()
          final DateTime? createdAt,
      @NullableDatetimeTimestampConverter()
          final DateTime? updatedAt}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String get contactId;
  @override
  String get word;
  @override
  String get contactName;
  @override // 到着したかどうか（offの場合はtrue）
  bool get isMatched;
  @override
  bool get isFavorite;
  @override
  NotifyArea get notifyArea;
  @override
  @UserConverter()
  List<User> get users;
  @override
  @ContactLocationConverter()
  ContactLocation get currentGoalLocation;
  @override
  @ContactLocationConverter()
  List<ContactLocation> get goalLocationList;
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
