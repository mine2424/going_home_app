import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryprovider =
    Provider<UserRepository>((ref) => UserRepository());

class UserRepository {
  static final _db = FirebaseFirestore.instance;

  Future<User> getUser(String uid) async {
    return User();
  }

  Future<void> saveUser(User user) async {
    try {
      await _db.doc(User.docPath(user.uid)).set(user.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateUser(User user) async {}

  Future<void> deleteUser(User user) async {}
}
