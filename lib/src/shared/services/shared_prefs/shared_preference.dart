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
  void _setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Get an integer value.
  int? _getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Save an boolean.
  void _setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Get an boolean.
  bool? _getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Save an double value.
  void _setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  // Get an double value.
  double? _getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  // Save an String value.
  void _setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Get an String value.
  String? _getString(String key) {
    return _prefs?.getString(key);
  }

  // Save an list of strings
  void _setStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  // Get an list of strings
  List<String>? _getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  Future<bool> _removeItem(String key) async =>
      await _prefs?.remove(key) ?? false;

  /// Returns true if it's the first time the app is launched, otherwise returns false.
  @override
  bool get appFirstTime => _getBool(_KeyPrefs.firsTimeApp.k) ?? true;

  /// Sets whether it's the first time the app is launched.
  @override
  set appFirstTime(bool value) => _setBool(_KeyPrefs.firsTimeApp.k, value);

  /// Sets whether it's the first time the app is launched.
  @override
  Future<bool> removeFirstTime() => _removeItem(_KeyPrefs.firsTimeApp.k);
}
