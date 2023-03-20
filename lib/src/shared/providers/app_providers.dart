import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:revel_credits/src/shared/services/shared_prefs/shared_preference.dart';
import 'package:revel_credits/src/shared/services/shared_prefs/shared_preference_interface.dart';

///
/// PROVIDERS
///
final _futureSharedPref = FutureProvider<SharedPreferencesServiceI>(
  (ref) => SharedPreferencesService.getInstance(),
);

final sharedPrefs = Provider<SharedPreferencesServiceI>(
  (ref) => ref.read(_futureSharedPref).asData!.value,
);

///
/// Initialize core providers
///
Future<ProviderContainer> initializeProviders() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ProviderContainer
  final container = ProviderContainer(
    overrides: [], // list overrides here
    observers: [_Logger()],
  );

  //GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  /// Core
  await container.read(_futureSharedPref.future);

  /// Auth
  //container.read(authControllerProvider);
  return container;
}

///
/// LOGGER
///
class _Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      ''',
    );
  }
}
