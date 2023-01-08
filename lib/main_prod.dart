import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:going_home_app/firebase_options.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';
import 'flavors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  F.appFlavor = Flavor.PROD;

  if (kDebugMode) {
    await _useFirebaseEmulator();
  }

  runApp(const ProviderScope(child: App()));
}

Future<void> _useFirebaseEmulator() async {
  try {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    await FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  } catch (e) {
    print(e);
  }
}
