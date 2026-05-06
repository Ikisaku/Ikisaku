import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:ikisaku/src/rust/frb_generated.dart';
import 'package:ikisaku/app.dart';

final logger = Logger(printer: PrettyPrinter());

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    logger.i("Initializing Ikisaku...");

    await RustLib.init();

    await Hive.initFlutter();
    await Hive.openBox('preferences_box');

    await _runMigrations();

    runApp(
      const ProviderScope(
        child: IkisakuApp()
      )
    );
  }, (error, stackTrace) {
    logger.e("Error fatal: $error", error: error, stackTrace: stackTrace);
  });
}

Future<void> _runMigrations() async {
  final box = Hive.box('preferences_box');
  final packageInfo = await PackageInfo.fromPlatform();
  final currentVersion = int.parse(packageInfo.buildNumber);
  
  final lastVersion = box.get('last_version_code', defaultValue: 0);

  if (lastVersion < currentVersion) {
    logger.i("Migration from $lastVersion to $currentVersion");
    await box.put('last_version_code', currentVersion);
  }
}