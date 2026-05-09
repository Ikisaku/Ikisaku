import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/core/crash/global_exception_handler.dart';
import 'src/core/migration/migrator.dart';
import 'src/core/security/privacy_preferences.dart';
import 'src/core/telemetry/telemetry_config.dart';
import 'src/data/coil/image_loader_manager.dart';
import 'src/data/notification/notification_manager.dart';
import 'src/domain/base/base_preferences.dart';
import 'src/domain/ui/ui_preferences.dart';
import 'src/presentation/widget/widget_manager.dart';
import 'src/rust/frb_generated.dart';
import 'src/ui/main/main_activity.dart';
import 'src/util/system/device_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GlobalExceptionHandler.initialize();

  await RustLib.init();

  await TelemetryConfig.init();

  await _initializeMigrator();

  runApp(
    const ProviderScope(
      child: IkisakuApp(),
    ),
  );
}

Future<void> _initializeMigrator() async {
  final prefs = await SharedPreferences.getInstance();
  const lastVersionKey = 'last_version_code';
  const currentVersion = 1; // TODO: Obtener de package_info_plus

  final lastVersion = prefs.getInt(lastVersionKey) ?? 0;

  debugPrint('Migration from $lastVersion to $currentVersion');

  Migrator.initialize(
    old: lastVersion,
    new_: currentVersion,
    migrations: [], // TODO: Agregar migraciones específicas
    onMigrationComplete: () async {
      debugPrint('Updating last version to $currentVersion');
      await prefs.setInt(lastVersionKey, currentVersion);
    },
  );
}

class IkisakuApp extends ConsumerStatefulWidget {
  const IkisakuApp({super.key});

  @override
  ConsumerState<IkisakuApp> createState() => _IkisakuAppState();
}

class _IkisakuAppState extends ConsumerState<IkisakuApp>
    with WidgetsBindingObserver {
  late final BasePreferences _basePreferences;
  late final PrivacyPreferences _privacyPreferences;
  late final UiPreferences _uiPreferences;

  late final NotificationManager _notificationManager;
  late final ImageLoaderManager _imageLoaderManager;
  late final WidgetManager _widgetManager;

  StreamSubscription<bool>? _incognitoSubscription;
  StreamSubscription<bool>? _analyticsSubscription;
  StreamSubscription<bool>? _crashlyticsSubscription;
  StreamSubscription<int>? _hardwareBitmapSubscription;
  StreamSubscription<ThemeMode>? _themeModeSubscription;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _initializeDependencies();

    _setupNotificationChannels();

    _setupPreferenceListeners();

    _initializeManagers();
  }

  @override
  void dispose() {
    _incognitoSubscription?.cancel();
    _analyticsSubscription?.cancel();
    _crashlyticsSubscription?.cancel();
    _hardwareBitmapSubscription?.cancel();
    _themeModeSubscription?.cancel();

    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  void _initializeDependencies() {
    _basePreferences = ref.read(basePreferencesProvider);
    _privacyPreferences = ref.read(privacyPreferencesProvider);
    _uiPreferences = ref.read(uiPreferencesProvider);

    _notificationManager = ref.read(notificationManagerProvider);
    _imageLoaderManager = ref.read(imageLoaderManagerProvider);
    _widgetManager = ref.read(widgetManagerProvider);
  }

  void _setupNotificationChannels() {
    try {
      _notificationManager.createChannels();
    } on Exception catch (e) {
      debugPrint('Failed to modify notification channels: $e');
    }
  }

  void _setupPreferenceListeners() {
    _incognitoSubscription = _basePreferences.incognitoMode.changes().listen(
      (enabled) {
        if (enabled) {
          _notificationManager.showIncognitoNotification();
        } else {
          _notificationManager.hideIncognitoNotification();
        }
      },
    );

    _analyticsSubscription = _privacyPreferences.analytics.changes().listen(
      TelemetryConfig.setAnalyticsEnabled,
    );

    _crashlyticsSubscription =
        _privacyPreferences.crashlytics.changes().listen(
      TelemetryConfig.setCrashlyticsEnabled,
    );

    _hardwareBitmapSubscription =
        _basePreferences.hardwareBitmapThreshold.changes().listen(
      DeviceUtil.setHardwareBitmapThreshold,
    );

    _themeModeSubscription = _uiPreferences.themeMode.changes().listen(
      (mode) {
        setState(() {});
      },
    );
  }

  void _initializeManagers() {
    _widgetManager.init();

    _basePreferences.hardwareBitmapThreshold.get().then((value) {
      if (value == 0) {
        final deviceLimit = DeviceUtil.getDeviceTextureLimit();
        _basePreferences.hardwareBitmapThreshold.set(deviceLimit);
      }
    });

    _imageLoaderManager.initialize();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      _onAppStart();
    } else if (state == AppLifecycleState.paused) {
      _onAppStop();
    }
  }

  void _onAppStart() {
    // TODO: Implementar SecureActivityDelegate.onApplicationStart()
    debugPrint('App started');
  }

  void _onAppStop() {
    // TODO: Implementar SecureActivityDelegate.onApplicationStopped()
    debugPrint('App stopped');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ThemeMode>(
      future: _uiPreferences.themeMode.get(),
      initialData: ThemeMode.system,
      builder: (context, snapshot) {
        final themeMode = snapshot.data ?? ThemeMode.system;

        return MaterialApp(
          title: 'Ikisaku',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),

          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),

          themeMode: themeMode,

          home: const MainActivity(),

          navigatorObservers: [
            // TODO: Agregar observers para analytics si está habilitado
          ],
        );
      },
    );
  }
}
