import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/common/converters/contact_location_converter.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';

part 'contact_location_history.freezed.dart';
part 'contact_location_history.g.dart';

@freezed
class ContactLocationHistory with _$ContactLocationHistory {
  const factory ContactLocationHistory({
    @Default('') String date,
    @ContactLocationConverter()
    @Default(<ContactLocation>[])
        List<ContactLocation> locations,
  }) = _ContactLocationHistory;

  factory ContactLocationHistory.fromJson(Map<String, dynamic> json) =>
      _$ContactLocationHistoryFromJson(json);

  // TODO:  static String get colPath => 'users/contacts/';

  // TODO:  static String docPath(String contactId) => 'users/contacts/$contactId';
}
