import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/migration/migrator.dart';
import 'base/activity/base_activity.dart';

class MainActivity extends ConsumerStatefulWidget {
  const MainActivity({super.key});

  @override
  ConsumerState<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends ConsumerState<MainActivity>
    with BaseActivityMixin {

  bool ready = false;

  Timer? _splashTimer;

  @override
  void initState() {
    super.initState();

    registerSecureActivity();

    _initialize();
  }

  @override
  void dispose() {
    _splashTimer?.cancel();
    super.dispose();
  }

  Future<void> _initialize() async {
    await Migrator.awaitAndRelease();

    setState(() {
      ready = true;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

class Intent {
  final String? action;
  final String? data;
  final Map<String, dynamic> extras;

  Intent({
    this.action,
    this.data,
    this.extras = const {},
  });

  int getInt(String key, int defaultValue) =>
      extras[key] as int? ?? defaultValue;

  int? getLong(String key) => extras[key] as int?;

  String? getString(String key) => extras[key] as String?;
}
