import 'package:flutter/material.dart';

mixin BaseActivityMixin<T extends StatefulWidget> on State<T> {
  bool _isSecureActivityRegistered = false;

  void registerSecureActivity() {
    if (!_isSecureActivityRegistered) {
      // TODO: Implementar lógica de seguridad
      // Ejemplo, prevenir screenshots en modo incógnito
      _isSecureActivityRegistered = true;
    }
  }

  void unregisterSecureActivity() {
    if (_isSecureActivityRegistered) {
      _isSecureActivityRegistered = false;
    }
  }

  @override
  void dispose() {
    unregisterSecureActivity();
    super.dispose();
  }
}
