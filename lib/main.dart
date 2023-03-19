import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/firebase_options.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/app_init.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:revel_credits/src/common/utils/app_colors.dart';

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
        textTheme: TextTheme(
          /*displayLarge
          displayMedium
          displaySmall
          headlineLarge
          headlineMedium
          headlineSmall
          titleMedium
          bodyLarge
          bodyMedium
          bodySmall
          labelMedium
          labelSmall
          headline1
          headline2
          headline3
          headline4
          headline5,
          headline6,
          subtitle1,
          subtitle2,
          bodyText1,
          bodyText2,
          caption,
          button,
          overline,*/
          titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        fontFamily: 'Montserrat',
        useMaterial3: true,
        iconTheme: const IconThemeData(color: AppColors.primary),
        //buttonTheme: const ButtonThemeData(buttonColor: AppColors.primary),
        primaryColor: AppColors.primary,
        primaryColorDark: Colors.black,
        disabledColor: AppColors.disabledColor,
        /*colorScheme: const ColorScheme(
          background: AppColors.disabledColor,
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.primary,
          secondary: AppColors.primary,
          onSecondary: AppColors.primary,
          error: AppColors.primary,
          onError: AppColors.primary,
          onBackground: AppColors.primary,
          surface: AppColors.primary,
          onSurface: AppColors.primary,
        ),*/
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
