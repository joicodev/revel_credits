import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/firebase_options.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/app_init.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:revel_credits/src/common/config/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: RevelCreditsApp()));
}

class RevelCreditsApp extends StatelessWidget {
  const RevelCreditsApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("[MyApp]");
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        /*textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          displayLarge: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
          titleLarge: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: 'NotoSans',
          ),
        ),*/
        //fontFamily: 'NotoSans',
        useMaterial3: true,
        primaryColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.primary),
        /*buttonBarTheme: const ButtonBarThemeData(
          buttonColor: AppColors.primary,
        ),*/
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primary,
        ),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: const AppInit(),
    );
  }
}
