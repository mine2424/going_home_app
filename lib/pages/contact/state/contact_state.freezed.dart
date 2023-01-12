// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactState _$ContactStateFromJson(Map<String, dynamic> json) {
  return _ContactState.fromJson(json);
}

/// @nodoc
mixin _$ContactState {
  bool get isLoading => throw _privateConstructorUsedError;
  @ContactConverter()
  List<Contact> get contacts => throw _privateConstructorUsedError;
  @UserConverter()
  List<User> get searchedUsers => throw _privateConstructorUsedError;
  String get deletedContactId => throw _privateConstructorUsedError;
  @ContactConverter()
  Contact get selectedContact => throw _privateConstructorUsedError; // form
  @UserConverter()
  List<User> get contactUsers => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  NotifyArea get notifyArea => throw _privateConstructorUsedError;
  @ContactLocationConverter()
  ContactLocation get goalLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call(
      {bool isLoading,
      @ContactConverter() List<Contact> contacts,
      @UserConverter() List<User> searchedUsers,
      String deletedContactId,
      @ContactConverter() Contact selectedContact,
      @UserConverter() List<User> contactUsers,
      bool isFavorite,
      NotifyArea notifyArea,
      @ContactLocationConverter() ContactLocation goalLocation});

  $ContactCopyWith<$Res> get selectedContact;
  $ContactLocationCopyWith<$Res> get goalLocation;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contacts = null,
    Object? searchedUsers = null,
    Object? deletedContactId = null,
    Object? selectedContact = null,
    Object? contactUsers = null,
    Object? isFavorite = null,
    Object? notifyArea = null,
    Object? goalLocation = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      searchedUsers: null == searchedUsers
          ? _value.searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      deletedContactId: null == deletedContactId
          ? _value.deletedContactId
          : deletedContactId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedContact: null == selectedContact
          ? _value.selectedContact
          : selectedContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      contactUsers: null == contactUsers
          ? _value.contactUsers
          : contactUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      goalLocation: null == goalLocation
          ? _value.goalLocation
          : goalLocation // ignore: cast_nullable_to_non_nullable
              as ContactLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get selectedContact {
    return $ContactCopyWith<$Res>(_value.selectedContact, (value) {
      return _then(_value.copyWith(selectedContact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactLocationCopyWith<$Res> get goalLocation {
    return $ContactLocationCopyWith<$Res>(_value.goalLocation, (value) {
      return _then(_value.copyWith(goalLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContactStateCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$_ContactStateCopyWith(
          _$_ContactState value, $Res Function(_$_ContactState) then) =
      __$$_ContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      @ContactConverter() List<Contact> contacts,
      @UserConverter() List<User> searchedUsers,
      String deletedContactId,
      @ContactConverter() Contact selectedContact,
      @UserConverter() List<User> contactUsers,
      bool isFavorite,
      NotifyArea notifyArea,
      @ContactLocationConverter() ContactLocation goalLocation});

  @override
  $ContactCopyWith<$Res> get selectedContact;
  @override
  $ContactLocationCopyWith<$Res> get goalLocation;
}

/// @nodoc
class __$$_ContactStateCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$_ContactState>
    implements _$$_ContactStateCopyWith<$Res> {
  __$$_ContactStateCopyWithImpl(
      _$_ContactState _value, $Res Function(_$_ContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? contacts = null,
    Object? searchedUsers = null,
    Object? deletedContactId = null,
    Object? selectedContact = null,
    Object? contactUsers = null,
    Object? isFavorite = null,
    Object? notifyArea = null,
    Object? goalLocation = null,
  }) {
    return _then(_$_ContactState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      searchedUsers: null == searchedUsers
          ? _value._searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      deletedContactId: null == deletedContactId
          ? _value.deletedContactId
          : deletedContactId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedContact: null == selectedContact
          ? _value.selectedContact
          : selectedContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      contactUsers: null == contactUsers
          ? _value._contactUsers
          : contactUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyArea: null == notifyArea
          ? _value.notifyArea
          : notifyArea // ignore: cast_nullable_to_non_nullable
              as NotifyArea,
      goalLocation: null == goalLocation
          ? _value.goalLocation
          : goalLocation // ignore: cast_nullable_to_non_nullable
              as ContactLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactState implements _ContactState {
  const _$_ContactState(
      {this.isLoading = false,
      @ContactConverter() final List<Contact> contacts = const <Contact>[],
      @UserConverter() final List<User> searchedUsers = const <User>[],
      this.deletedContactId = '',
      @ContactConverter() this.selectedContact = const Contact(),
      @UserConverter() final List<User> contactUsers = const <User>[],
      this.isFavorite = false,
      this.notifyArea = NotifyArea.none,
      @ContactLocationConverter() this.goalLocation = const ContactLocation()})
      : _contacts = contacts,
        _searchedUsers = searchedUsers,
        _contactUsers = contactUsers;

  factory _$_ContactState.fromJson(Map<String, dynamic> json) =>
      _$$_ContactStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<Contact> _contacts;
  @override
  @JsonKey()
  @ContactConverter()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<User> _searchedUsers;
  @override
  @JsonKey()
  @UserConverter()
  List<User> get searchedUsers {
    if (_searchedUsers is EqualUnmodifiableListView) return _searchedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedUsers);
  }

  @override
  @JsonKey()
  final String deletedContactId;
  @override
  @JsonKey()
  @ContactConverter()
  final Contact selectedContact;
// form
  final List<User> _contactUsers;
// form
  @override
  @JsonKey()
  @UserConverter()
  List<User> get contactUsers {
    if (_contactUsers is EqualUnmodifiableListView) return _contactUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactUsers);
  }

  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final NotifyArea notifyArea;
  @override
  @JsonKey()
  @ContactLocationConverter()
  final ContactLocation goalLocation;

  @override
  String toString() {
    return 'ContactState(isLoading: $isLoading, contacts: $contacts, searchedUsers: $searchedUsers, deletedContactId: $deletedContactId, selectedContact: $selectedContact, contactUsers: $contactUsers, isFavorite: $isFavorite, notifyArea: $notifyArea, goalLocation: $goalLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality()
                .equals(other._searchedUsers, _searchedUsers) &&
            (identical(other.deletedContactId, deletedContactId) ||
                other.deletedContactId == deletedContactId) &&
            (identical(other.selectedContact, selectedContact) ||
                other.selectedContact == selectedContact) &&
            const DeepCollectionEquality()
                .equals(other._contactUsers, _contactUsers) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.notifyArea, notifyArea) ||
                other.notifyArea == notifyArea) &&
            (identical(other.goalLocation, goalLocation) ||
                other.goalLocation == goalLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_searchedUsers),
      deletedContactId,
      selectedContact,
      const DeepCollectionEquality().hash(_contactUsers),
      isFavorite,
      notifyArea,
      goalLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactStateCopyWith<_$_ContactState> get copyWith =>
      __$$_ContactStateCopyWithImpl<_$_ContactState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactStateToJson(
      this,
    );
  }
}

abstract class _ContactState implements ContactState {
  const factory _ContactState(
          {final bool isLoading,
          @ContactConverter() final List<Contact> contacts,
          @UserConverter() final List<User> searchedUsers,
          final String deletedContactId,
          @ContactConverter() final Contact selectedContact,
          @UserConverter() final List<User> contactUsers,
          final bool isFavorite,
          final NotifyArea notifyArea,
          @ContactLocationConverter() final ContactLocation goalLocation}) =
      _$_ContactState;

  factory _ContactState.fromJson(Map<String, dynamic> json) =
      _$_ContactState.fromJson;

  @override
  bool get isLoading;
  @override
  @ContactConverter()
  List<Contact> get contacts;
  @override
  @UserConverter()
  List<User> get searchedUsers;
  @override
  String get deletedContactId;
  @override
  @ContactConverter()
  Contact get selectedContact;
  @override // form
  @UserConverter()
  List<User> get contactUsers;
  @override
  bool get isFavorite;
  @override
  NotifyArea get notifyArea;
  @override
  @ContactLocationConverter()
  ContactLocation get goalLocation;
  @override
  @JsonKey(ignore: true)
  _$$_ContactStateCopyWith<_$_ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
