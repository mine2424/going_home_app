import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_page_state.freezed.dart';
part 'contact_page_state.g.dart';

@freezed
class ContactPageState with _$ContactPageState {
  const factory ContactPageState({
    @Default(false) bool isLoading,
  }) = _ContactPageState;

  factory ContactPageState.fromJson(Map<String, dynamic> json) =>
      _$ContactPageStateFromJson(json);
}
