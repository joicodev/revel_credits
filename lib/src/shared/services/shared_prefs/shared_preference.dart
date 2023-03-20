import 'package:revel_credits/src/shared/services/shared_prefs/shared_preference_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _KeyPrefs {
  // Key to store whether it's the first time the app is launched
  firsTimeApp('first_time'),
  ;

  final String k;
  //
  const _KeyPrefs(this.k);
}

/// Service to access device's shared preferences.
class SharedPreferencesService implements SharedPreferencesServiceI {
  // Instance of shared preferences
  static SharedPreferences? _prefs;

  // Singleton instance of the service
  static SharedPreferencesService? _instance;

  SharedPreferencesService._() {
    _init();
  }

  /// Returns the singleton instance of the service.
  static Future<SharedPreferencesService> getInstance() async {
    if (_instance == null) {
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
    _prefs = await SharedPreferences.getInstance();
  }

  // Save an integer value.
  void setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Save an boolean.
  void setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Save an double value.
  void setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  // Save an String value.
  void setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Save an list of strings
  void setStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  // Get an integer value.
  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Get an boolean.
  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Get an double value.
  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  // Get an String value.
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  // Get an list of strings
  List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  /// Returns true if it's the first time the app is launched, otherwise returns false.
  @override
  bool get appFirstTime => getBool(_KeyPrefs.firsTimeApp.k) ?? false;

  /// Sets whether it's the first time the app is launched.
  @override
  set appFirstTime(bool value) => setBool(_KeyPrefs.firsTimeApp.k, value);
}
