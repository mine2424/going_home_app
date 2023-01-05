import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class ContactLocationHistoryConverter
    implements JsonConverter<ContactLocationHistory, Map<String, dynamic>> {
  const ContactLocationHistoryConverter();

  @override
  ContactLocationHistory fromJson(Map<String, dynamic> value) {
    return ContactLocationHistory(
      locations: (value['locations'] as List<dynamic>)
          .map((e) => ContactLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      reaction: value['reaction'] as String,
      date: value['date'] as DateTime,
    );
  }

  @override
  Map<String, dynamic> toJson(ContactLocationHistory object) {
    return <String, dynamic>{
      'locations': object.locations.map((e) => e.toJson()).toList(),
      'reaction': object.reaction,
      'date': object.date,
    };
  }
}
