import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/theme.dart';
import 'package:going_home_app/domain/auth/auth_service.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:going_home_app/pages/contact/contact_home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'flavors.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);

    AuthStatus judgeAuthState() {
      var status = AuthStatus.none;

      authService.listenAuthStatus().then((value) {
        if (value == AuthStatus.authenticated) {
          status = AuthStatus.authenticated;
        } else {
          status = AuthStatus.unauthenticated;
        }
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

      // ---- For Development ----
      home: const ContactHomePage(),
      // home: const OnBoardingPage(),
      // -------------------------
    );
  }
}
