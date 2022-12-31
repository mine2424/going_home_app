import 'package:flutter/material.dart';
import 'package:going_home_app/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/theme.dart';
import 'flavors.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: F.title,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      locale: kLocale,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
