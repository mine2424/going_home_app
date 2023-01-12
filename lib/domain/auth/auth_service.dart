import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authStatusProvider = StreamProvider<AuthStatus?>((ref) async* {
  final authStatusStream = ref.watch(authServiceProvider).authStateChanges();
  await for (final authStatus in authStatusStream) {
    if (authStatus == null) {
      yield AuthStatus.none;
    } else {
      yield AuthStatus.authenticated;
    }
  }
});

class AuthService {
  final _auth = FirebaseAuth.instance;

  String? get currentUid => _auth.currentUser?.uid;

  Stream<User?> authStateChanges() {
    return _auth.authStateChanges();
  }

  Future<AuthStatus> listenAuthStatus() async {
    final currentUser = _auth.currentUser;
    _auth.authStateChanges();

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

  Future<AuthStatus> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(user);
      return AuthStatus.authenticated;
    } catch (e) {
      // TODO: エラー処理
      print(e);
      return AuthStatus.error;
    }
  }

  Future<AuthStatus> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(user);
      return AuthStatus.authenticated;
    } catch (e) {
      // TODO: エラー処理
      print(e);
      return AuthStatus.error;
    }
  }

  Future<AuthStatus> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);

      return AuthStatus.authenticated;
    } catch (e) {
      print(e);
      return AuthStatus.error;
    }
  }

  Future<AuthStatus> signInWithApple() async {
    try {
      // Trigger the authentication flow
      final appleProvider = AppleAuthProvider();
      if (kIsWeb) {
        await FirebaseAuth.instance.signInWithPopup(appleProvider);
      } else {
        await FirebaseAuth.instance.signInWithProvider(appleProvider);
      }

      return AuthStatus.authenticated;
    } catch (e) {
      print(e);
      return AuthStatus.error;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      // TODO: エラー処理
      print(e);
    }
  }

  final _storage = FirebaseStorage.instance;

  void addProfileImageForStorage() {}
}
