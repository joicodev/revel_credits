import 'package:shared_preferences/shared_preferences.dart';

/// Service to access device's shared preferences.
class SharedPreferencesService {
  // Key to store whether it's the first time the app is launched
  static const String _isFirstTimeKey = 'first_time';

  // Singleton instance of the service
  static SharedPreferencesService? _instance;
  // Instance of shared preferences
  static SharedPreferences? _preferences;

  // Private constructor to prevent direct instantiation
  SharedPreferencesService._();

  /// Returns the singleton instance of the service.
  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
      print('New instance for ');
      // If instance has not been created...
      _instance = SharedPreferencesService._();
      // and initialize it
      await _instance!._init();
    }

    return _instance!; // Return the created instance
  }

  /// Initializes the service.
  Future<void> _init() async {
    // Get the instance of shared preferences
    _preferences = await SharedPreferences.getInstance();
  }

  /// Returns true if it's the first time the app is launched, otherwise returns false.
  bool get isFirstTime => _preferences?.getBool(_isFirstTimeKey) ?? true;

  /// Sets whether it's the first time the app is launched.
  set isFirstTime(bool value) {
    // Store the value in the shared preferences
    _preferences?.setBool(_isFirstTimeKey, value);
  }
}
