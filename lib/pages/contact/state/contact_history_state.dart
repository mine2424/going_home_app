import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_location_converter.dart';
import 'package:going_home_app/common/converters/contact_location_history_converter.dart';
import 'package:going_home_app/common/converters/datetime_to_timestamp_converter.dart.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';

part 'contact_history_state.freezed.dart';
part 'contact_history_state.g.dart';

@freezed
class ContactHistoryState with _$ContactHistoryState {
  const factory ContactHistoryState({
    @Default(false) bool isLoading,
    @ContactLocationHistoryConverter()
    @Default(<ContactLocationHistory>[])
        List<ContactLocationHistory> histories,
    @ContactLocationConverter()
    @Default(<ContactLocation>[])
        List<ContactLocation> locations,
    @NullableDatetimeTimestampConverter() DateTime? currentCreatedAt,
  }) = _ContactHistoryState;

  factory ContactHistoryState.fromJson(Map<String, dynamic> json) =>
      _$ContactHistoryStateFromJson(json);
}
