import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final basePreferencesProvider = Provider<BasePreferences>((ref) {
  return BasePreferences();
});

class Preference<T> {
  final Future<T> Function() _getter;
  final Future<void> Function(T) _setter;

  Preference(this._getter, this._setter);

  Future<T> get() => _getter();
  Future<void> set(T value) => _setter(value);
  
  Stream<T> changes() async* {
    yield await get();
    // TODO: Implementar stream real de cambios
  }
}

class BasePreferences {
  static const String _keyIncognitoMode = 'incognito_mode';
  static const String _keyDownloadedOnly = 'downloaded_only';
  static const String _keyShownOnboardingFlow = 'shown_onboarding_flow';
  static const String _keyDonationCampaignShown = 'donation_campaign_shown';
  static const String _keyHardwareBitmapThreshold = 'hardware_bitmap_threshold';

  SharedPreferences? _prefs;

  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  late final Preference<bool> incognitoMode = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyIncognitoMode) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyIncognitoMode, value);
    },
  );

  late final Preference<bool> downloadedOnly = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyDownloadedOnly) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyDownloadedOnly, value);
    },
  );

  late final Preference<bool> shownOnboardingFlow = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyShownOnboardingFlow) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyShownOnboardingFlow, value);
    },
  );

  late final Preference<bool> donationCampaignShown = Preference<bool>(
    () async {
      await _ensureInitialized();
      return _prefs?.getBool(_keyDonationCampaignShown) ?? false;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setBool(_keyDonationCampaignShown, value);
    },
  );

  late final Preference<int> hardwareBitmapThreshold = Preference<int>(
    () async {
      await _ensureInitialized();
      return _prefs?.getInt(_keyHardwareBitmapThreshold) ?? 0;
    },
    (value) async {
      await _ensureInitialized();
      await _prefs?.setInt(_keyHardwareBitmapThreshold, value);
    },
  );
}
