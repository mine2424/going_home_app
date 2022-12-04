import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/theme.dart';
import 'package:going_home_app/domain/auth/auth_service.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:going_home_app/pages/auth/onBoarding_page.dart';
import 'package:going_home_app/pages/my_home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'flavors.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    // TODO: state notifierを使う場合は、state内のauthStatusを使う

    AuthStatus _judgeAuthState() {
      var status = AuthStatus.none;

      authService.listenAuthStatus().then((value) {
        status = AuthStatus.authenticated;
      }).onError((error, stackTrace) {
        status = AuthStatus.error;
      });

      return status;
    }

    return MaterialApp(
      title: F.title,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      locale: kLocale,
      // home: (_judgeAuthState() == AuthStatus.authenticated)
      //     ? const MyHomePage()
      //     : const OnBoardingPage(),
      home: const MyHomePage(),
      // home: const OnBoardingPage(),
    );
  }
}
