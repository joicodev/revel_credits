// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Keep a detailed record of your vehicles available for sale.`
  String get onboardingFirst {
    return Intl.message(
      'Keep a detailed record of your vehicles available for sale.',
      name: 'onboardingFirst',
      desc: '',
      args: [],
    );
  }

  /// `Easily register sales of your financed vehicles.`
  String get onboardingSecond {
    return Intl.message(
      'Easily register sales of your financed vehicles.',
      name: 'onboardingSecond',
      desc: '',
      args: [],
    );
  }

  /// `Track the payment status of your clients.`
  String get onboardingThird {
    return Intl.message(
      'Track the payment status of your clients.',
      name: 'onboardingThird',
      desc: '',
      args: [],
    );
  }

  /// `Analyze the performance of your business anytime, anywhere.`
  String get onboardingFourth {
    return Intl.message(
      'Analyze the performance of your business anytime, anywhere.',
      name: 'onboardingFourth',
      desc: '',
      args: [],
    );
  }

  /// `Available vehicles.`
  String get onboardingFirstTitle {
    return Intl.message(
      'Available vehicles.',
      name: 'onboardingFirstTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sales registration.`
  String get onboardingSecondTitle {
    return Intl.message(
      'Sales registration.',
      name: 'onboardingSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Payment status.`
  String get onboardingThirdTitle {
    return Intl.message(
      'Payment status.',
      name: 'onboardingThirdTitle',
      desc: '',
      args: [],
    );
  }

  /// `Performance and analysis.`
  String get onboardingFourthTitle {
    return Intl.message(
      'Performance and analysis.',
      name: 'onboardingFourthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Let's go right away!`
  String get letsGoRightAway {
    return Intl.message(
      'Let\'s go right away!',
      name: 'letsGoRightAway',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message(
      'Welcome!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Login whit Google`
  String get buttonLoginWithGoogle {
    return Intl.message(
      'Login whit Google',
      name: 'buttonLoginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get buttonLogout {
    return Intl.message(
      'Logout',
      name: 'buttonLogout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
