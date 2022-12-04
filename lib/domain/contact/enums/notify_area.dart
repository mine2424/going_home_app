import 'package:freezed_annotation/freezed_annotation.dart';

enum NotifyArea {
  none,
  error,
  loading,

  // 10m以内
  veryNear,

  // 100m以内
  near,

  // 1km以内
  normal,

  // 10km以内
  far,

  // 100km以内
  veryFar,
}

class NotifyAreaConverter implements JsonConverter<NotifyArea, String> {
  const NotifyAreaConverter();

  @override
  NotifyArea fromJson(String value) => NotifyArea.values.firstWhere(
        (element) => element.name == value,
        orElse: () => NotifyArea.none,
      );

  @override
  String toJson(NotifyArea object) => object.name;
}
