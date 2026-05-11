import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlobalExceptionHandler {
  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      _handleFlutterError(details);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      _handleDartError(error, stack);
      return true;
    };

    _initialized = true;
    debugPrint('GlobalExceptionHandler initialized');
  }

  static void _handleFlutterError(FlutterErrorDetails details) {
    // TODO: Enviar a crashlytics si está habilitado
    debugPrint('Flutter error: ${details.exception}');
    debugPrint('Stack trace: ${details.stack}');
  }

  static void _handleDartError(Object error, StackTrace stack) {
    // TODO: Enviar a crashlytics si está habilitado
    debugPrint('Dart error: $error');
    debugPrint('Stack trace: $stack');
  }

  static void showCrashScreen(
    BuildContext context,
    Object error,
    StackTrace stack,
  ) {
    // TODO: Navegar a CrashActivity equivalente
    debugPrint('Showing crash screen for error: $error');
  }
}
