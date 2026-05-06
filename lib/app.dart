import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/main.dart';

class IkisakuApp extends ConsumerStatefulWidget {
  const IkisakuApp({super.key});

  @override
  ConsumerState<IkisakuApp> createState() => _IkisakuAppState();
}

class _IkisakuAppState extends ConsumerState<IkisakuApp> {
  late final AppLifecycleListener _lifecycleListener;

  @override
  void initState() {
    super.initState();

    _lifecycleListener = AppLifecycleListener(
      onShow: () {
        logger.i("App in foreground");
      },
      onHide: () {
        logger.i("App in background");
      },
    );
  }

  @override
  void dispose() {
    _lifecycleListener.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Ikisaku',
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Ikisaku - Core Ready')),
        body: const Center(
          child: Text('Core ready'),
        ),
      ),
    );
  }
}