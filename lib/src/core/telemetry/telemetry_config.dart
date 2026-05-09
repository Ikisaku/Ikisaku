import 'package:flutter/material.dart';

class TelemetryConfig {
  static bool _analyticsEnabled = false;
  static bool _crashlyticsEnabled = false;
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;

    // TODO: Inicializar Firebase Analytics y Crashlytics
    // await Firebase.initializeApp();

    _initialized = true;
    debugPrint('TelemetryConfig initialized');
  }

  static void setAnalyticsEnabled(bool enabled) {
    _analyticsEnabled = enabled;
    // TODO: Configurar Firebase Analytics
    debugPrint('Analytics enabled: $enabled');
  }

  static void setCrashlyticsEnabled(bool enabled) {
    _crashlyticsEnabled = enabled;
    // TODO: Configurar Firebase Crashlytics
    debugPrint('Crashlytics enabled: $enabled');
  }

  static bool get analyticsEnabled => _analyticsEnabled;

  static bool get crashlyticsEnabled => _crashlyticsEnabled;
}
