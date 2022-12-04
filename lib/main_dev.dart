import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:going_home_app/firebase_options.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';
import 'flavors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  F.appFlavor = Flavor.DEV;

  runApp(const ProviderScope(child: App()));
}
