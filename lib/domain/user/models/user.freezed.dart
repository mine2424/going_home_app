// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String get tokenId => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  List<String> get contactIds => throw _privateConstructorUsedError;
  List<String> get familyContactIds => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;
  String get occupation => throw _privateConstructorUsedError;
  @SexConverter()
  Sex get sex => throw _privateConstructorUsedError;
  @HouseholdConverter()
  Household get household => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get birthday => throw _privateConstructorUsedError;
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String uid,
      String tokenId,
      bool isAdmin,
      bool isDeleted,
      List<String> contactIds,
      List<String> familyContactIds,
      String name,
      String profileImageUrl,
      String occupation,
      @SexConverter() Sex sex,
      @HouseholdConverter() Household household,
      @NullableDatetimeTimestampConverter() DateTime? birthday,
      @NullableDatetimeTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? tokenId = null,
    Object? isAdmin = null,
    Object? isDeleted = null,
    Object? contactIds = null,
    Object? familyContactIds = null,
    Object? name = null,
    Object? profileImageUrl = null,
    Object? occupation = null,
    Object? sex = null,
    Object? household = null,
    Object? birthday = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      contactIds: null == contactIds
          ? _value.contactIds
          : contactIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      familyContactIds: null == familyContactIds
          ? _value.familyContactIds
          : familyContactIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      household: null == household
          ? _value.household
          : household // ignore: cast_nullable_to_non_nullable
              as Household,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String tokenId,
      bool isAdmin,
      bool isDeleted,
      List<String> contactIds,
      List<String> familyContactIds,
      String name,
      String profileImageUrl,
      String occupation,
      @SexConverter() Sex sex,
      @HouseholdConverter() Household household,
      @NullableDatetimeTimestampConverter() DateTime? birthday,
      @NullableDatetimeTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? tokenId = null,
    Object? isAdmin = null,
    Object? isDeleted = null,
    Object? contactIds = null,
    Object? familyContactIds = null,
    Object? name = null,
    Object? profileImageUrl = null,
    Object? occupation = null,
    Object? sex = null,
    Object? household = null,
    Object? birthday = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_User(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      contactIds: null == contactIds
          ? _value._contactIds
          : contactIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      familyContactIds: null == familyContactIds
          ? _value._familyContactIds
          : familyContactIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      household: null == household
          ? _value.household
          : household // ignore: cast_nullable_to_non_nullable
              as Household,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.uid = '',
      this.tokenId = '',
      this.isAdmin = false,
      this.isDeleted = false,
      final List<String> contactIds = const <String>[],
      final List<String> familyContactIds = const <String>[],
      this.name = '',
      this.profileImageUrl = '',
      this.occupation = '',
      @SexConverter() this.sex = Sex.none,
      @HouseholdConverter() this.household = Household.none,
      @NullableDatetimeTimestampConverter() this.birthday,
      @NullableDatetimeTimestampConverter() this.createdAt})
      : _contactIds = contactIds,
        _familyContactIds = familyContactIds;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String tokenId;
  @override
  @JsonKey()
  final bool isAdmin;
  @override
  @JsonKey()
  final bool isDeleted;
  final List<String> _contactIds;
  @override
  @JsonKey()
  List<String> get contactIds {
    if (_contactIds is EqualUnmodifiableListView) return _contactIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactIds);
  }

  final List<String> _familyContactIds;
  @override
  @JsonKey()
  List<String> get familyContactIds {
    if (_familyContactIds is EqualUnmodifiableListView)
      return _familyContactIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyContactIds);
  }

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String profileImageUrl;
  @override
  @JsonKey()
  final String occupation;
  @override
  @JsonKey()
  @SexConverter()
  final Sex sex;
  @override
  @JsonKey()
  @HouseholdConverter()
  final Household household;
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? birthday;
  @override
  @NullableDatetimeTimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'User(uid: $uid, tokenId: $tokenId, isAdmin: $isAdmin, isDeleted: $isDeleted, contactIds: $contactIds, familyContactIds: $familyContactIds, name: $name, profileImageUrl: $profileImageUrl, occupation: $occupation, sex: $sex, household: $household, birthday: $birthday, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other._contactIds, _contactIds) &&
            const DeepCollectionEquality()
                .equals(other._familyContactIds, _familyContactIds) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.household, household) ||
                other.household == household) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      tokenId,
      isAdmin,
      isDeleted,
      const DeepCollectionEquality().hash(_contactIds),
      const DeepCollectionEquality().hash(_familyContactIds),
      name,
      profileImageUrl,
      occupation,
      sex,
      household,
      birthday,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
          {final String uid,
          final String tokenId,
          final bool isAdmin,
          final bool isDeleted,
          final List<String> contactIds,
          final List<String> familyContactIds,
          final String name,
          final String profileImageUrl,
          final String occupation,
          @SexConverter() final Sex sex,
          @HouseholdConverter() final Household household,
          @NullableDatetimeTimestampConverter() final DateTime? birthday,
          @NullableDatetimeTimestampConverter() final DateTime? createdAt}) =
      _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid;
  @override
  String get tokenId;
  @override
  bool get isAdmin;
  @override
  bool get isDeleted;
  @override
  List<String> get contactIds;
  @override
  List<String> get familyContactIds;
  @override
  String get name;
  @override
  String get profileImageUrl;
  @override
  String get occupation;
  @override
  @SexConverter()
  Sex get sex;
  @override
  @HouseholdConverter()
  Household get household;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get birthday;
  @override
  @NullableDatetimeTimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
