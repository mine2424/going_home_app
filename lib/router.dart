// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:going_home_app/pages/auth/add_profile_page.dart';
import 'package:going_home_app/pages/auth/login_page.dart';
import 'package:going_home_app/pages/auth/sign_up_page.dart';
import 'package:going_home_app/pages/contact/contact_history_page.dart';
import 'package:going_home_app/pages/setting/news_page.dart';
import 'package:going_home_app/pages/setting/setting_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:going_home_app/domain/auth/auth_service.dart';
import 'package:going_home_app/domain/auth/enums/auth_status.dart';
import 'package:going_home_app/pages/auth/onBoarding_page.dart';
import 'package:going_home_app/pages/contact/contact_home_page.dart';

enum RoutePath {
  onBoarding,
  add_profile,
  login,
  signUp,
  contact_home,
  contact_history,
  setting,
  news;

  String get toStr => '/$name';

  String get toStrWithValue => '/$name/:value';
  String setToStrWithValue(String val) => '/$name/$val';
}

final routerProvider = Provider(
  (ref) {
    final status = ref.watch(authStatusProvider);
    return GoRouter(
      initialLocation: RoutePath.contact_home.toStr,
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
        GoRoute(
          path: RoutePath.login.toStr,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: RoutePath.signUp.toStr,
          builder: (context, state) => const SignUpPage(),
        ),

        // --- Contact ---
        GoRoute(
          path: RoutePath.contact_home.toStr,
          builder: (context, state) => const ContactHomePage(),
        ),

        GoRoute(
          path: RoutePath.contact_history.toStr,
          builder: (context, state) => const ContactHistoryPage(),
        ),

        // --- Setting ---
        GoRoute(
          path: RoutePath.setting.toStr,
          builder: (context, state) => const SettingPage(),
        ),
        GoRoute(
          path: RoutePath.news.toStr,
          builder: (context, state) => const NewsPage(),
        ),
      ],
      redirect: (_, state) {
        // INFO: 毎回リダイレクトを起こしているので、リダイレクトの必要がない場合はリダイレクトしないようにする
        final isNone = status.asData?.value == AuthStatus.none;
        final isProcessing = state.subloc == RoutePath.add_profile.toStr ||
            state.subloc == RoutePath.login.toStr ||
            state.subloc == RoutePath.signUp.toStr;

        if (isNone && !isProcessing) {
          return RoutePath.onBoarding.toStr;
        }

        return null;
      },
    );
  },
);
