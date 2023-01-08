import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactLocationRepositoryProvider =
    Provider<ContactLocationRepository>((ref) => ContactLocationRepository());

class ContactLocationRepository {
  static final _db = FirebaseFirestore.instance;

  Future<void> saveContactLocationHistory(
    String contactId,
    List<ContactLocation> locations,
  ) async {
    try {
      final doc = _db.doc(ContactLocationHistory.docPath(contactId));
      if (!(await doc.get()).exists) {
        return;
      }

      await doc.set(
        ContactLocationHistory(
          locations: locations,
          date: DateTime.now(),
        ).toJson(),
      );
    } catch (e) {
      print(e);
      throw Exception('Failed to save contact location history.');
    }
  }
}
