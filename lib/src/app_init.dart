import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revel_credits/generated/l10n.dart';
import 'package:revel_credits/src/shared/presentation/utils/app_colors.dart';
import 'package:revel_credits/src/shared/presentation/widgets/onboarding_widget.dart';
import 'package:revel_credits/src/shared/providers/app_providers.dart';
import 'package:revel_credits/src/features/home/presentation/page/home_page.dart';
import 'package:revel_credits/src/features/user/presentation/pages/auth_page.dart';
import 'package:revel_credits/src/features/user/providers.dart';

class AppInit extends ConsumerWidget {
  const AppInit({Key? key}) : super(key: key);

  Widget _handleCurrentSession(WidgetRef ref) {
    if (ref.read(sharedPrefs).appFirstTime) {
      return const OnBoardingWidget();
    }

    return StreamBuilder(
      stream: ref.read(userRepositoryProvider).authStatus,
      builder: (_, AsyncSnapshot snapshot) {
        print('hasData ===> ${snapshot.hasData}');
        print('connectionState ===> ${snapshot.connectionState}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData) {
          print('muestra home page....');
          return const HomePage();
        }

        return const AuthPage();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
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
      supportedLocales: const [Locale('en'), Locale('es')],
      home: _handleCurrentSession(ref),
    );
  }
}
