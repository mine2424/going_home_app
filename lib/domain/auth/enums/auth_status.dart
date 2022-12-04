import 'package:freezed_annotation/freezed_annotation.dart';

enum AuthStatus {
  none,
  error,
  loading,

  authenticated,
}

class AuthStatusConverter implements JsonConverter<AuthStatus, String> {
  const AuthStatusConverter();

  @override
  AuthStatus fromJson(String value) => AuthStatus.values.firstWhere(
        (element) => element.name == value,
        orElse: () => AuthStatus.none,
      );

  @override
  String toJson(AuthStatus object) => object.name;
}
