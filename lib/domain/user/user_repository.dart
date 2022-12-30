import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryprovider =
    Provider<UserRepository>((ref) => UserRepository());

class UserRepository {
  static final _db = FirebaseFirestore.instance;

  Future<User> getUser(String uid) async {
    try {
      final doc = await _db.doc(User.docPath(uid)).get();
      return User.fromJson(doc.data()!);
    } catch (e) {
      print(e);
      throw Exception('Failed to get user: $e');
    }
  }

  Future<void> saveUser(User user) async {
    try {
      await _db.doc(User.docPath(user.uid)).set(user.toJson());
    } catch (e) {
      print(e);
      throw Exception('Failed to save user: $e');
    }
  }

  Future<void> deleteUser(User user) async {
    try {
      await _db.doc(User.docPath(user.uid)).delete();
    } catch (e) {
      print(e);
      throw Exception('Failed to delete user: $e');
    }
  }
}
