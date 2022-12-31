// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:going_home_app/pages/auth/add_profile_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:going_home_app/domain/auth/auth_service.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:going_home_app/pages/auth/onBoarding_page.dart';
import 'package:going_home_app/pages/contact/contact_home_page.dart';
import 'package:going_home_app/pages/contact/contact_page.dart';

final routerProvider = Provider(
  (ref) {
    final status = ref.watch(authStatusProvider);
    return GoRouter(
      routes: [
        // --- Auth ---
        GoRoute(
          path: RoutePath.onBoarding.toStr,
          builder: (context, state) => const OnBoardingPage(),
        ),
        GoRoute(
          path: RoutePath.add_profile.toStr,
          builder: (context, state) => const AddProfilePage(),
        ),

        // --- Contact ---
        GoRoute(
          path: RoutePath.contact_home.toStr,
          builder: (context, state) => const ContactHomePage(),
        ),
        GoRoute(
          path: RoutePath.contact.toStr,
          builder: (context, state) => const ContactPage(),
        ),
      ],
      redirect: (_, state) {
        if (status.asData?.value == AuthStatus.authenticated) {
          return RoutePath.contact_home.toStr;
        } else {
          return RoutePath.onBoarding.toStr;
        }
      },
    );
  },
);

enum RoutePath {
  onBoarding,
  add_profile,
  contact_home,
  contact;

  String get toStr => '/$name';
}
