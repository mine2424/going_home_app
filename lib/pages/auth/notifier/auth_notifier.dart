import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:going_home_app/domain/auth/auth_service.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:going_home_app/domain/user/user_repository.dart';
import 'package:going_home_app/pages/auth/state/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<AuthState>>(
  (ref) => AuthNotifier(
    ref.read(userRepositoryProvider),
    ref.read(authServiceProvider),
  ),
);

class AuthNotifier extends StateNotifier<AsyncValue<AuthState>> {
  AuthNotifier(
    this._authRepository,
    this._authService,
  ) : super(const AsyncValue.loading());

  final AuthService _authService;
  final UserRepository _authRepository;

  final _message = FirebaseMessaging.instance;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  String get uid => _authService.currentUid;

  void changeFirstSignUp() {
    state = state.when(
      data: (data) => AsyncValue.data(data.copyWith(isFirstSignUp: true)),
      loading: () => state,
      error: (e, s) => state,
    );
  }

  Future<void> requestNotiPermission() async {
    await _message.requestPermission();
  }

  Future<void> setNotification() async {
    final token = await _message.getToken();
    if (token == null) {
      print('token is null');
      return;
    }
    state = AsyncValue.data(
      state.asData?.value.copyWith(tokenId: token) ?? AuthState(tokenId: token),
    );
    print('🐯 FCM TOKEN: $token');
  }

  Future<void> addUser() async {
    state = const AsyncValue.loading();

    try {
      await requestNotiPermission();
      await setNotification();
      final user = User(
        uid: _authService.currentUid,
        name: nameController.text,
        tokenId: state.asData!.value.tokenId,
        createdAt: DateTime.now(),
      );
      await _authRepository.saveUser(user);
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> addContactId(Contact newContact) async {
    state = const AsyncValue.loading();

    try {
      final users = newContact.users;

      for (final user in users) {
        await saveUser(user);
      }
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> saveUser(User user) async {
    state = const AsyncValue.loading();

    try {
      await _authRepository.saveUser(user);
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<User> getMyUserForContact() async {
    return state.asData?.value.user ?? await getMyUser();
  }

  Future<User> getUser(String uid) async {
    state = const AsyncValue.loading();
    try {
      final user = await _authRepository.getUser(uid);
      state = AsyncValue.data(state.asData!.value.copyWith(user: user));

      return user;
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
      rethrow;
    }
  }

  Future<User> getMyUser() async {
    state = const AsyncValue.loading();
    try {
      final user = await _authRepository.getUser(_authService.currentUid);
      state = AsyncValue.data(AuthState(user: user));

      return user;
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
      rethrow;
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    state = const AsyncValue.loading();
    try {
      await _authService.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    try {
      await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> signInWithGoogle() async {
    state = const AsyncValue.loading();
    try {
      await _authService.signInWithGoogle();
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> signInWithApple() async {
    state = const AsyncValue.loading();
    try {
      await _authService.signInWithApple();
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await _authService.signOut();
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }
}
