import 'dart:io';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceUtil {
  static int _hardwareBitmapThreshold = 0;
  static bool? _isLowRamDevice;

  static int getDeviceTextureLimit() {
    // TODO: Implementar detección real del límite de textura OpenGL
    // Ahora retorna un valor por defecto
    return 4096;
  }

  static void setHardwareBitmapThreshold(int threshold) {
    _hardwareBitmapThreshold = threshold;
    debugPrint('Hardware bitmap threshold set to: $threshold');
  }
  static int get hardwareBitmapThreshold => _hardwareBitmapThreshold;

  static Future<bool> isLowRamDevice() async {
    if (_isLowRamDevice != null) return _isLowRamDevice!;

    if (Platform.isAndroid) {
      try {
        // final deviceInfo = DeviceInfoPlugin();
        // final androidInfo = await deviceInfo.androidInfo;
        
        // TODO: Usar ActivityManager.isLowRamDevice() via platform channel
        _isLowRamDevice = false;
        return _isLowRamDevice!;
      } catch (e) {
        debugPrint('Error checking if device is low RAM: $e');
        _isLowRamDevice = false;
        return false;
      }
    }

    _isLowRamDevice = false;
    return false;
  }

  static Future<Map<String, dynamic>> getDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      return {
        'model': androidInfo.model,
        'manufacturer': androidInfo.manufacturer,
        'version': androidInfo.version.release,
        'sdkInt': androidInfo.version.sdkInt,
      };
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      return {
        'model': iosInfo.model,
        'systemName': iosInfo.systemName,
        'systemVersion': iosInfo.systemVersion,
      };
    }

    return {};
  }
}
