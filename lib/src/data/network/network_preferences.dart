import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/base/base_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

final networkPreferencesProvider = Provider<NetworkPreferences>((ref) {
  return NetworkPreferences();
});

class NetworkPreferences {
  static const String _keyVerboseLogging = 'verbose_logging';

  SharedPreferences? _prefs;

  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// Logging verboso habilitado
  late final Preference<bool> verboseLogging = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyVerboseLogging) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyVerboseLogging, value);
    },
  );
}
