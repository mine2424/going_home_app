// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/router.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';
import 'package:going_home_app/widgets/dialog/form_dialog.dart';
import 'package:going_home_app/widgets/dialog/single_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  Future<void> judgeNavigation(
    BuildContext context,
    AuthNotifier authNotifier,
  ) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => FormDialog(
        titleText: '名前を入力してください',
        memoText: '登録後も変更ができます。',
        hintText: '名前',
        textController: authNotifier.nameController,
        onPressed: () {
          if (authNotifier.nameController.text.isEmpty) {
            const SingleDialog(
              title: '名前を入力してください',
              buttonText: 'OK',
            ).show(context);
            return;
          }
          context.pop();
          return;
        },
      ),
    );
    return;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightPrimaryColor,
        elevation: 0,
        title: Text(
          '新規登録',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: kLightPrimaryColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              bottom: 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/going_home_signup_logo.png'),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: SignInButton(
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    onPressed: () async {
                      await judgeNavigation(context, authNotifier);
                      await authNotifier.signInWithGoogle();
                      await authNotifier.addUser();
                      context.go(RoutePath.contact_home.toStr);
                    },
                  ),
                ),
                SizedBox(height: Consts.space4x(4)),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: SignInButton(
                    Buttons.Apple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    onPressed: () async {
                      await judgeNavigation(context, authNotifier);
                      await authNotifier.signInWithApple();
                      await authNotifier.addUser();
                      context.go(RoutePath.contact_home.toStr);
                    },
                  ),
                ),
                SizedBox(height: Consts.space4x(4)),
                const Divider(color: kDarkGray),
                SizedBox(height: Consts.space4x(4)),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'メールアドレス',
                  ),
                  controller: authNotifier.emailController,
                ),
                SizedBox(height: Consts.space4x(2)),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'パスワード',
                  ),
                  obscureText: true,
                  controller: authNotifier.passwordController,
                ),
                SizedBox(height: Consts.space4x(4)),
                WidelyButton(
                  label: 'メールアドレスで登録する',
                  onPressed: () async {
                    if (authNotifier.emailController.text.isEmpty ||
                        authNotifier.passwordController.text.isEmpty) {
                      const SingleDialog(
                        title: 'メールアドレスとパスワードを入力してください',
                        buttonText: 'OK',
                      ).show(context);
                      return;
                    }

                    await judgeNavigation(context, authNotifier);
                    await authNotifier.createUserWithEmailAndPassword();
                    sleep(const Duration(milliseconds: 100));
                    await authNotifier.addUser();
                  },
                  backgroundColor: kDarkGray,
                  textStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: kWhite),
                ),
                SizedBox(height: Consts.space4x(4)),

                // --- login ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('すでにアカウントをお持ちの方は'),
                    TextButton(
                      onPressed: () {
                        context.go(RoutePath.login.toStr);
                      },
                      child: const Text(
                        'ログイン',
                        style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
