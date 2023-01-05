import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_converter.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';

part 'contact_state.freezed.dart';
part 'contact_state.g.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default(false) bool isLoading,
    @ContactConverter() @Default(<Contact>[]) List<Contact> contacts,
  }) = _ContactState;

  factory ContactState.fromJson(Map<String, dynamic> json) =>
      _$ContactStateFromJson(json);
}
