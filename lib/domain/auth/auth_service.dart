import 'package:firebase_auth/firebase_auth.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final _auth = FirebaseAuth.instance;

  String get currentUid => _auth.currentUser!.uid;

  Future<AuthStatus> listenAuthStatus() async {
    final currentUser = _auth.currentUser;

    try {
      if (currentUser?.uid != null) {
        return AuthStatus.authenticated;
      }

      return AuthStatus.none;
    } on Exception catch (e) {
      print(e);
      return AuthStatus.error;
    }
  }

  Future<AuthStatus> createAnonymousUser() async {
    try {
      final user = await _auth.signInAnonymously();
      print(user);
      return AuthStatus.authenticated;
    } catch (e) {
      print(e);
      return AuthStatus.error;
    }
  }
}
