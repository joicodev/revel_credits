import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/firebase_options.dart';
import 'package:revel_credits/src/app_init.dart';
import 'package:revel_credits/src/common/providers/app_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    UncontrolledProviderScope(
      container: await initializeProviders(),
      child: const AppInit(),
    ),
  );
}
