import 'package:freezed_annotation/freezed_annotation.dart';

enum NotifyArea {
  none,
  error,
  loading,

  // 10m以内
  veryNear,

  // 100m以内
  near,

  // 500m以内
  normal,

  // 1km以内
  far,

  // 10km以内
  veryFar;

  int toMeter() {
    switch (this) {
      case NotifyArea.veryNear:
        return 10;
      case NotifyArea.near:
        return 100;
      case NotifyArea.normal:
        return 500;
      case NotifyArea.far:
        return 1000;
      case NotifyArea.veryFar:
        return 10000;
      default:
        return 0;
    }
  }
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
