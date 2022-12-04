import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactRepositoryProvider =
    Provider<ContactRepository>((ref) => ContactRepository());

class ContactRepository {
  static final _db = FirebaseFirestore.instance;
}
