import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final libraryPreferencesProvider = Provider<LibraryPreferences>((ref) {
  return LibraryPreferences();
});

class Preference<T> {
  final Future<T> Function() _getter;
  final Future<void> Function(T) _setter;

  Preference(this._getter, this._setter);

  Future<T> get() => _getter();
  Future<void> set(T value) => _setter(value);
}

class LibraryPreferences {
  static const String _keyAutoClearChapterCache = 'auto_clear_chapter_cache';

  SharedPreferences? _prefs;

  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  late final Preference<bool> autoClearChapterCache = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyAutoClearChapterCache) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyAutoClearChapterCache, value);
    },
  );
}
