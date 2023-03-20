import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:revel_credits/src/common/services/shared_preference.dart';

/// Provider for SharedPreference
final _futureSharedPref = FutureProvider<SharedPreferencesService>(
  (ref) => SharedPreferencesService.getInstance(),
);

final sharedPrefs = Provider<SharedPreferencesService>(
  (ref) => ref.read(_futureSharedPref).asData!.value,
);

/// Initialize core providers
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
  //await container.read(supabaseProvider.future);

  /// Auth
  //container.read(authControllerProvider);
  return container;
}

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
