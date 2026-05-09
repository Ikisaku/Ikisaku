import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notifier/local_notifier.dart';

final notificationManagerProvider = Provider<NotificationManager>((ref) {
  return NotificationManager();
});

class NotificationManager {
  static const int idIncognitoMode = 100;
  static const String channelIncognitoMode = 'incognito_mode_channel';
  static const String channelLibraryUpdate = 'library_update_channel';
  static const String channelDownloader = 'downloader_channel';
  static const String channelExtensionUpdate = 'extension_update_channel';
  static const String channelBackup = 'backup_channel';
  static const String channelCrash = 'crash_channel';

  final FlutterLocalNotificationsPlugin _mobileNotifications =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  bool get _isMobilePlatform {
    if (kIsWeb) return false;
    return Platform.isAndroid || Platform.isIOS;
  }

  bool get _isDesktopPlatform {
    if (kIsWeb) return false;
    return Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  }

  Future<void> _ensureInitialized() async {
    if (_initialized) return;

    try {
      if (_isMobilePlatform) {
        const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
        const iosSettings = DarwinInitializationSettings();
        const initSettings = InitializationSettings(
          android: androidSettings,
          iOS: iosSettings,
        );

        await _mobileNotifications.initialize(settings: initSettings);
        debugPrint('NotificationManager: Mobile notifications initialized');
      } else if (_isDesktopPlatform) {
        await localNotifier.setup(
          appName: 'Ikisaku',
          shortcutPolicy: ShortcutPolicy.requireCreate,
        );
        debugPrint('NotificationManager: Desktop notifications initialized');
      }

      _initialized = true;
    } catch (e) {
      debugPrint('NotificationManager: Failed to initialize: $e');
    }
  }

  Future<void> createChannels() async {
    if (!_isMobilePlatform) {
      debugPrint('NotificationManager: Channels only needed for mobile platforms');
      return;
    }

    await _ensureInitialized();

    if (Platform.isAndroid) {
      const incognitoChannel = AndroidNotificationChannel(
        channelIncognitoMode,
        'Incognito Mode',
        description: 'Incognito mode is enabled',
        importance: Importance.low,
        showBadge: false,
      );

      const libraryUpdateChannel = AndroidNotificationChannel(
        channelLibraryUpdate,
        'Library Updates',
        description: 'Library update notifications',
        importance: Importance.low,
      );

      const downloaderChannel = AndroidNotificationChannel(
        channelDownloader,
        'Downloader',
        description: 'Download progress notifications',
        importance: Importance.low,
      );

      const extensionUpdateChannel = AndroidNotificationChannel(
        channelExtensionUpdate,
        'Extension Updates',
        description: 'Extension update notifications',
        importance: Importance.low,
      );

      const backupChannel = AndroidNotificationChannel(
        channelBackup,
        'Backup',
        description: 'Backup notifications',
        importance: Importance.low,
      );

      const crashChannel = AndroidNotificationChannel(
        channelCrash,
        'Crash Logs',
        description: 'Crash log notifications',
        importance: Importance.high,
      );

      final androidPlugin = _mobileNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      await androidPlugin?.createNotificationChannel(incognitoChannel);
      await androidPlugin?.createNotificationChannel(libraryUpdateChannel);
      await androidPlugin?.createNotificationChannel(downloaderChannel);
      await androidPlugin?.createNotificationChannel(extensionUpdateChannel);
      await androidPlugin?.createNotificationChannel(backupChannel);
      await androidPlugin?.createNotificationChannel(crashChannel);

      debugPrint('NotificationManager: Android channels created');
    }
  }

  Future<void> showIncognitoNotification() async {
    await _ensureInitialized();

    if (!_initialized) {
      debugPrint('NotificationManager: Not initialized, skipping notification');
      return;
    }

    try {
      if (_isMobilePlatform) {
        const androidDetails = AndroidNotificationDetails(
          channelIncognitoMode,
          'Incognito Mode',
          channelDescription: 'Incognito mode is enabled',
          importance: Importance.low,
          priority: Priority.low,
          ongoing: true,
          autoCancel: false,
          icon: '@drawable/ic_glasses_24dp',
        );

        const iosDetails = DarwinNotificationDetails();

        const details = NotificationDetails(
          android: androidDetails,
          iOS: iosDetails,
        );

        await _mobileNotifications.show(
          id: idIncognitoMode,
          title: 'Incognito Mode',
          body: 'Tap to disable incognito mode',
          notificationDetails: details,
        );
      } else if (_isDesktopPlatform) {
        final notification = LocalNotification(
          identifier: idIncognitoMode.toString(),
          title: 'Incognito Mode',
          body: 'Tap to disable incognito mode',
          silent: true,
        );
        await notification.show();
      }

      debugPrint('NotificationManager: Incognito notification shown');
    } catch (e) {
      debugPrint('NotificationManager: Failed to show notification: $e');
    }
  }

  Future<void> hideIncognitoNotification() async {
    if (!_initialized) {
      debugPrint('NotificationManager: Not initialized, skipping hide');
      return;
    }

    try {
      if (_isMobilePlatform) {
        await _mobileNotifications.cancel(id: idIncognitoMode);
      } else if (_isDesktopPlatform) {
        final notification = LocalNotification(
          identifier: idIncognitoMode.toString(),
          title: '',
          body: '',
        );
        await notification.destroy();
      }

      debugPrint('NotificationManager: Incognito notification hidden');
    } catch (e) {
      debugPrint('NotificationManager: Failed to hide notification: $e');
    }
  }

  Future<void> cancel(int id) async {
    if (!_initialized) return;

    try {
      if (_isMobilePlatform) {
        await _mobileNotifications.cancel(id: id);
      } else if (_isDesktopPlatform) {
        final notification = LocalNotification(
          identifier: id.toString(),
          title: '',
          body: '',
        );
        await notification.destroy();
      }
    } catch (e) {
      debugPrint('NotificationManager: Failed to cancel notification: $e');
    }
  }

  Future<void> cancelAll() async {
    if (!_initialized) return;

    try {
      if (_isMobilePlatform) {
        await _mobileNotifications.cancelAll();
      } else if (_isDesktopPlatform) {
        debugPrint('NotificationManager: Desktop does not support cancel all');
      }
    } catch (e) {
      debugPrint('NotificationManager: Failed to cancel all notifications: $e');
    }
  }
}
