import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/base/base_preferences.dart';

final privacyPreferencesProvider = Provider<PrivacyPreferences>((ref) {
  return PrivacyPreferences();
});

class PrivacyPreferences {
  static const String _keyAnalytics = 'analytics_enabled';
  static const String _keyCrashlytics = 'crashlytics_enabled';

  SharedPreferences? _prefs;

  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  late final Preference<bool> analytics = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyAnalytics) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyAnalytics, value);
    },
  );

  late final Preference<bool> crashlytics = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyCrashlytics) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyCrashlytics, value);
    },
  );
}
