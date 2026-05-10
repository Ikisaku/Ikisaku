import 'dart:io';
import 'package:package_info_plus/package_info_plus.dart';

class SystemUtils {
  static bool isNavigationBarNeedsScrim() {
    if (Platform.isAndroid) {
      // TODO: Implementar verificación real
      return false;
    }
    return false;
  }

  static Future<DateTime> getFirstInstallTime() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      // TODO: Usar método de plataforma para obtener la fecha real
      return DateTime.now().subtract(const Duration(days: 30));
    } catch (e) {
      return DateTime.now();
    }
  }

  static double dpToPx(double dp) {
    // TODO: Implementar conversión real basada en densidad de pantalla
    return dp * 2.0;
  }
}
