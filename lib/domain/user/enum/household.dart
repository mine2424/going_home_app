import 'package:freezed_annotation/freezed_annotation.dart';

enum Household {
  none,

  // 単身
  single,
  // 夫婦orカップル
  couple,
  // 一般的な家族
  family,
  // 二世帯住み
  twoFamily,
}

class HouseholdConverter implements JsonConverter<Household, String> {
  const HouseholdConverter();

  @override
  Household fromJson(String value) => Household.values.firstWhere(
        (element) => element.name == value,
        orElse: () => Household.none,
      );

  @override
  String toJson(Household object) => object.name;
}
