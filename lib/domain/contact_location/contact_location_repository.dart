import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactLocationRepositoryProvider =
    Provider<ContactLocationRepository>((ref) => ContactLocationRepository());

class ContactLocationRepository {
  static final _db = FirebaseFirestore.instance;

  Future<List<ContactLocationHistory>> getContactLocationHistories(
    String contactId,
  ) async {
    try {
      if (contactId.isEmpty) {
        print('contactId is empty.');
        return [];
      }
      print(ContactLocationHistory.contactColPath(contactId));
      final snapshots = await _db
          .collection(ContactLocationHistory.contactColPath(contactId))
          .get();

      if (snapshots.docs.isEmpty) {
        return [];
      }

      return snapshots.docs
          .map((e) => ContactLocationHistory.fromJson(e.data()))
          .toList();
    } catch (e) {
      print(e);
      throw Exception('Failed to get contact location histories.');
    }
  }

  Future<void> saveContactLocationHistory(
    String contactId,
    List<ContactLocation> locations,
  ) async {
    try {
      final now = DateTime.now();
      final doc = _db
          .collection(ContactLocationHistory.contactColPath(contactId))
          .doc('${Timestamp.fromDate(now)}}');

      await doc.set(
        ContactLocationHistory(
          locations: locations,
          date: now,
        ).toJson(),
      );
    } catch (e) {
      print(e);
      throw Exception('Failed to save contact location history.');
    }
  }
}
