import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_location_converter.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';

part 'contact_location_history.freezed.dart';
part 'contact_location_history.g.dart';

@freezed
class ContactLocationHistory with _$ContactLocationHistory {
  const factory ContactLocationHistory({
    @Default('') String reaction,
    @ContactLocationConverter()
    @Default(<ContactLocation>[])
        List<ContactLocation> locations,
    @NullableDatetimeTimestampConverter() DateTime? date,
  }) = _ContactLocationHistory;

  factory ContactLocationHistory.fromJson(Map<String, dynamic> json) =>
      _$ContactLocationHistoryFromJson(json);

  static String get colPath => '/private/contact_history/v1';

  static String contactColPath(String contactId) => '$colPath/$contactId/v1';
}
