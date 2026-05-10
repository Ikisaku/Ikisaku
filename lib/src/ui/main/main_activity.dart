import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/core/migration/migrator.dart';
import 'package:ikisaku/src/data/cache/chapter_cache.dart';
import 'package:ikisaku/src/data/download/download_cache.dart';
import 'package:ikisaku/src/data/notification/notification_receiver.dart';
import 'package:ikisaku/src/data/updater/app_update_checker.dart';
import 'package:ikisaku/src/domain/base/base_preferences.dart';
import 'package:ikisaku/src/domain/library/library_preferences.dart';
import 'package:ikisaku/src/domain/release/interactor/get_application_release.dart';
import 'package:ikisaku/src/domain/source/interactor/get_incognito_state.dart';
import 'package:ikisaku/src/extension/api/extension_api.dart';
import 'package:ikisaku/src/feature/support/support_us_screen.dart';
import 'package:ikisaku/src/presentation/components/adaptive_sheet.dart';
import 'package:ikisaku/src/presentation/components/app_state_banners.dart';
import 'package:ikisaku/src/presentation/more/settings/screen/browse/extension_repos_screen.dart';
import 'package:ikisaku/src/presentation/more/settings/screen/data/restore_backup_screen.dart';
import 'package:ikisaku/src/ui/base/activity/base_activity.dart';
import 'package:ikisaku/src/ui/browse/source/globalsearch/global_search_screen.dart';
import 'package:ikisaku/src/ui/deeplink/deep_link_screen.dart';
import 'package:ikisaku/src/ui/home/home_screen.dart';
import 'package:ikisaku/src/ui/more/new_update_screen.dart';
import 'package:ikisaku/src/ui/more/onboarding_screen.dart';
import 'package:ikisaku/src/util/constants.dart';
import 'package:ikisaku/src/util/system/system_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MainActivity extends ConsumerStatefulWidget {
  const MainActivity({super.key});

  @override
  ConsumerState<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends ConsumerState<MainActivity>
    with BaseActivityMixin {
  late final LibraryPreferences _libraryPreferences;
  late final BasePreferences _preferences;
  late final DownloadCache _downloadCache;
  late final ChapterCache _chapterCache;
  late final GetIncognitoState _getIncognitoState;

  bool ready = false;

  GlobalKey<NavigatorState>? _navigatorKey;

  bool _incognito = false;
  bool _downloadOnly = false;
  bool _indexing = false;
  bool _showDonationCampaign = false;

  late final int _startTime;
  Timer? _splashTimer;

  @override
  void initState() {
    super.initState();

    registerSecureActivity();

    _libraryPreferences = ref.read(libraryPreferencesProvider);
    _preferences = ref.read(basePreferencesProvider);
    _downloadCache = ref.read(downloadCacheProvider);
    _chapterCache = ref.read(chapterCacheProvider);
    _getIncognitoState = ref.read(getIncognitoStateProvider);

    _navigatorKey = GlobalKey<NavigatorState>();
    _startTime = DateTime.now().millisecondsSinceEpoch;

    _initialize();
  }

  @override
  void dispose() {
    _splashTimer?.cancel();
    super.dispose();
  }

  Future<void> _initialize() async {
    // Migrator.awaitAndRelease()
    await Migrator.awaitAndRelease();

    _incognito = await _getIncognitoState.getState(null);
    _downloadOnly = await _preferences.downloadedOnly.get();
    _indexing = _downloadCache.isInitializing;

    _setupSplashScreen();

    if (await _libraryPreferences.autoClearChapterCache.get()) {
      _chapterCache.clear();
    }

    setState(() {
      ready = true;
    });
  }

  void _setupSplashScreen() {
    _splashTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      final elapsed = DateTime.now().millisecondsSinceEpoch - _startTime;
      if (elapsed > Constants.splashMinDuration && ready) {
        timer.cancel();
      } else if (elapsed > Constants.splashMaxDuration) {
        timer.cancel();
        if (!ready) {
          setState(() {
            ready = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupSystemUI(context);

    if (!ready) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (_navigatorKey?.currentState?.canPop() ?? false) {
          _navigatorKey?.currentState?.pop();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            AppStateBanners(
              downloadedOnlyMode: _downloadOnly,
              incognitoMode: _incognito,
              indexing: _indexing,
            ),
            Expanded(
              child: Stack(
                children: [
                  Navigator(
                    key: _navigatorKey,
                    onGenerateRoute: (settings) {
                      return MaterialPageRoute<void>(
                        builder: (context) => const HomeScreen(),
                        settings: settings,
                      );
                    },
                  ),
                  if (SystemUtils.isNavigationBarNeedsScrim())
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).padding.bottom,
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest
                            .withValues(alpha: 0.8),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setupSystemUI(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    Color statusBarBackgroundColor;
    if (_indexing) {
      statusBarBackgroundColor =
          AppStateBanners.indexingBannerBackgroundColor;
    } else if (_downloadOnly) {
      statusBarBackgroundColor =
          AppStateBanners.downloadedOnlyBannerBackgroundColor;
    } else if (_incognito) {
      statusBarBackgroundColor =
          AppStateBanners.incognitoModeBannerBackgroundColor;
    } else {
      statusBarBackgroundColor = Theme.of(context).colorScheme.surface;
    }

    final luminance = statusBarBackgroundColor.computeLuminance();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            luminance > 0.5 ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness:
            isDark ? Brightness.light : Brightness.dark,
      ),
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void handleNewIntent(Intent intent) {
    handleIntentAction(intent);
  }

  Future<void> checkForUpdates() async {
    if (Constants.updaterEnabled) {
      try {
        final result = await AppUpdateChecker().checkForUpdate(context);
        if (result is NewUpdateResult && mounted) {
          await _navigatorKey?.currentState?.push<void>(
            MaterialPageRoute<void>(
              builder: (context) => NewUpdateScreen(
                versionName: result.release.version,
                changelogInfo: result.release.info,
                releaseLink: result.release.releaseLink,
                downloadLink: result.release.downloadLink,
              ),
            ),
          );
        }
      } on Exception catch (e) {
        debugPrint('Error checking for app updates: $e');
      }
    }

    try {
      await ExtensionApi().checkForUpdates(context);
    } on Exception catch (e) {
      debugPrint('Error checking for extension updates: $e');
    }
  }

  Future<void> showOnboarding() async {
    if (!await _preferences.shownOnboardingFlow.get() && mounted) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      if (mounted) {
        await _navigatorKey?.currentState?.push<void>(
          MaterialPageRoute<void>(
            builder: (context) => const OnboardingScreen(),
          ),
        );
      }
    }
  }

  Future<void> showDonationCampaign() async {
    try {
      final firstInstallTime = await SystemUtils.getFirstInstallTime();
      final eligibleTime = firstInstallTime.add(const Duration(days: 180));
      final now = DateTime.now();

      if (now.isAfter(eligibleTime) &&
          !await _preferences.donationCampaignShown.get()) {
        setState(() {
          _showDonationCampaign = true;
        });

        if (mounted) {
          _showDonationCampaignSheet();
        }
      }
    } on Exception catch (e) {
      debugPrint('Error checking donation campaign: $e');
    }
  }

  void _showDonationCampaignSheet() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => AdaptiveSheet(
        onDismissRequest: _dismissDonationCampaign,
        child: _buildDonationCampaignContent(),
      ),
    );
  }

  Widget _buildDonationCampaignContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        Flexible(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Support Ikisaku Development',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Ikisaku is a free and open-source manga reader.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Your contributions help us maintain servers.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              FilledButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  _navigatorKey?.currentState?.push<void>(
                    MaterialPageRoute<void>(
                      builder: (context) => const SupportUsScreen(),
                    ),
                  );
                  _dismissDonationCampaign();
                },
                icon: const Icon(Icons.volunteer_activism),
                label: const Text('Support Us'),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        launchUrl(Uri.parse(Constants.urlDiscord));
                      },
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('Discord'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        _dismissDonationCampaign();
                      },
                      child: const Text('Dismiss'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _dismissDonationCampaign() {
    _preferences.donationCampaignShown.set(true);
    setState(() {
      _showDonationCampaign = false;
    });
  }

  bool handleIntentAction(Intent intent) {
    final notificationId = intent.getInt('notificationId', -1);
    if (notificationId > -1) {
      NotificationReceiver.dismissNotification(
        context,
        notificationId,
        intent.getInt('groupId', 0),
      );
    }

    dynamic tabToOpen;

    switch (intent.action) {
      case Constants.shortcutLibrary:
        tabToOpen = HomeScreenTab.library();
        break;

      case Constants.shortcutManga:
        final idToOpen = intent.getLong(Constants.mangaExtra);
        if (idToOpen == null) return false;
        _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
        tabToOpen = HomeScreenTab.library(idToOpen);
        break;

      case Constants.shortcutUpdates:
        tabToOpen = HomeScreenTab.updates;
        break;

      case Constants.shortcutHistory:
        tabToOpen = HomeScreenTab.history;
        break;

      case Constants.shortcutSources:
        tabToOpen = HomeScreenTab.browse();
        break;

      case Constants.shortcutExtensions:
        tabToOpen = HomeScreenTab.browse(true);
        break;

      case Constants.shortcutDownloads:
        _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
        tabToOpen = HomeScreenTab.more(toDownloads: true);
        break;

      case 'android.intent.action.SEARCH':
      case 'android.intent.action.SEND':
      case 'com.google.android.gms.actions.SEARCH_ACTION':
        final query = intent.getString('query') ??
            intent.getString('android.intent.extra.TEXT');
        if (query != null && query.isNotEmpty) {
          _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
          _navigatorKey?.currentState?.push<void>(
            MaterialPageRoute<void>(
              builder: (context) => DeepLinkScreen(query: query),
            ),
          );
        }
        break;

      case Constants.intentSearch:
        final query = intent.getString(Constants.intentSearchQuery);
        if (query != null && query.isNotEmpty) {
          final filter = intent.getString(Constants.intentSearchFilter);
          _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
          _navigatorKey?.currentState?.push<void>(
            MaterialPageRoute<void>(
              builder: (context) =>
                  GlobalSearchScreen(query: query, filter: filter),
            ),
          );
        }
        break;

      case 'android.intent.action.VIEW':
        final data = intent.data;
        if (data != null) {
          if (data.endsWith('.ikisabk')) {
            _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
            _navigatorKey?.currentState?.push<void>(
              MaterialPageRoute<void>(
                builder: (context) => RestoreBackupScreen(uri: data),
              ),
            );
          } else if (data.startsWith('ikisaku://add-repo')) {
            final uri = Uri.parse(data);
            final repoUrl = uri.queryParameters['url'];
            if (repoUrl != null) {
              _navigatorKey?.currentState?.popUntil((route) => route.isFirst);
              _navigatorKey?.currentState?.push<void>(
                MaterialPageRoute<void>(
                  builder: (context) => ExtensionReposScreen(repoUrl: repoUrl),
                ),
              );
            }
          }
        }
        break;

      default:
        return false;
    }

    if (tabToOpen != null) {
      // TODO: Implementar navegación a tab específico
      // HomeScreen.openTab(tabToOpen);
      debugPrint('Opening tab: $tabToOpen');
    }

    ready = true;
    return true;
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
