import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_converter.dart';
import 'package:going_home_app/common/converters/contact_location_converter.dart';
import 'package:going_home_app/common/converters/user_converter.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/user/models/user.dart';

part 'contact_state.freezed.dart';
part 'contact_state.g.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default(false) bool isLoading,
    @ContactConverter() @Default(<Contact>[]) List<Contact> contacts,
    @UserConverter() @Default(<User>[]) List<User> searchedUsers,
    @Default('') String deletedContactId,
    @ContactConverter() @Default(Contact()) Contact selectedContact,

    // form
    @UserConverter() @Default(<User>[]) List<User> contactUsers,
    @Default(false) bool isFavorite,
    @Default(NotifyArea.none) NotifyArea notifyArea,
    @ContactLocationConverter()
    @Default(ContactLocation())
        ContactLocation goalLocation,
  }) = _ContactState;

  factory ContactState.fromJson(Map<String, dynamic> json) =>
      _$ContactStateFromJson(json);
}
