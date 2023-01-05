import 'package:flutter/material.dart';
import 'package:going_home_app/domain/auth/auth_service.dart';
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
  AuthNotifier(this._authRepository, this._authService)
      : super(const AsyncValue.loading());

  final AuthService _authService;
  final UserRepository _authRepository;

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

  Future<void> addUser() async {
    state = const AsyncValue.loading();

    final user = User(
      uid: _authService.currentUid,
      name: nameController.text,
      createdAt: DateTime.now(),
    );

    try {
      await _authRepository.saveUser(user);
      state = const AsyncValue.data(AuthState());
    } on Exception catch (e, v) {
      state = AsyncValue.error(e, v);
    }
  }

  Future<User> getUser() async {
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
