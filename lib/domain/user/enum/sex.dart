import 'package:freezed_annotation/freezed_annotation.dart';

enum Sex {
  none,

  male,
  female,
}

class SexConverter implements JsonConverter<Sex, String> {
  const SexConverter();

  @override
  Sex fromJson(String value) => Sex.values.firstWhere(
        (element) => element.name == value,
        orElse: () => Sex.none,
      );

  @override
  String toJson(Sex object) => object.name;
}
