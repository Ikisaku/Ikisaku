import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/base/base_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

final uiPreferencesProvider = Provider<UiPreferences>((ref) {
  return UiPreferences();
});

class UiPreferences {
  static const String _keyThemeMode = 'theme_mode';

  SharedPreferences? _prefs;

  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  late final Preference<ThemeMode> themeMode = Preference<ThemeMode>(
    () async {
      await _ensureInitialized();
      final value = _prefs?.getInt(_keyThemeMode) ?? 0;
      return ThemeMode.values[value];
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setInt(_keyThemeMode, value.index);
    },
  );
}
