import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/domain/user/models/user.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(User()) User user,
    @Default(false) bool isLoading,
    @Default(false) bool isFirstSignUp,
    @Default('') String tokenId,
    @NullableDatetimeTimestampConverter() DateTime? createdAt,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
