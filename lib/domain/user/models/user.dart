import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String uid,
    @Default('') String originalId,
    @Default('') String name,
    @Default('') String tokenId,
    @Default('') String profileImageUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static String get colPath => 'users/';

  static String docPath(String uid) => 'users/$uid';
}
