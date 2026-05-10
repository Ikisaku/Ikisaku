import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/ui/browse/browse_tab.dart';
import 'package:ikisaku/src/ui/download/download_queue_screen.dart';
import 'package:ikisaku/src/ui/history/history_tab.dart';
import 'package:ikisaku/src/ui/library/library_tab.dart';
import 'package:ikisaku/src/ui/manga/manga_screen.dart';
import 'package:ikisaku/src/ui/more/more_tab.dart';
import 'package:ikisaku/src/ui/updates/updates_tab.dart';

final updatesCountProvider = Provider<int>((ref) => 0);
final extensionUpdatesCountProvider = Provider<int>((ref) => 0);
final bottomNavVisibleProvider = Provider<bool>((ref) => true);

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;
  bool _bottomNavVisible = true;

  final _librarySearchController = StreamController<String>.broadcast();
  final _openTabController = StreamController<HomeTab>.broadcast();
  final _showBottomNavController = StreamController<bool>.broadcast();

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );
    _fadeController.forward();

    _setupEventListeners();
  }

  void _setupEventListeners() {
    _librarySearchController.stream.listen((query) {
      if (!mounted) return;
      _goToLibraryTab();
      LibraryTab.search(context, query);
    });

    _openTabController.stream.listen((tab) {
      if (!mounted) return;
      setState(() {
        _currentIndex = tab.index;
      });

      if (tab is LibraryTabData && tab.mangaIdToOpen != null) {
        Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (_) => MangaScreen(mangaId: tab.mangaIdToOpen!),
          ),
        );
      }
      if (tab is BrowseTabData && tab.toExtensions) {
        BrowseTab.showExtensions(context);
      }
      if (tab is MoreTabData && tab.toDownloads) {
        Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (_) => const DownloadQueueScreen(),
          ),
        );
      }
    });

    _showBottomNavController.stream.listen((show) {
      if (!mounted) return;
      setState(() {
        _bottomNavVisible = show;
      });
    });
  }

  void _goToLibraryTab() {
    setState(() {
      _currentIndex = 0;
    });
  }

  void _onTabSelected(int index) {
    if (_currentIndex == index) {
      _onTabReselected(index);
    } else {
      _fadeController.reset();
      setState(() {
        _currentIndex = index;
      });
      _fadeController.forward();
    }
  }

  void _onTabReselected(int index) {
    final navigatorState = _navigatorKeys[index].currentState;
    if (navigatorState != null && navigatorState.canPop()) {
      navigatorState.popUntil((route) => route.isFirst);
    }
    
    switch (index) {
      case 0:
        LibraryTab.onReselect(context);
        break;
      case 1:
        UpdatesTab.onReselect(context);
        break;
      case 2:
        HistoryTab.onReselect(context);
        break;
      case 3:
        BrowseTab.onReselect(context);
        break;
      case 4:
        MoreTab.onReselect(context);
        break;
    }
  }

  Widget _buildTab(int index) {
    switch (index) {
      case 0:
        return LibraryTab(key: _navigatorKeys[0]);
      case 1:
        return UpdatesTab(key: _navigatorKeys[1]);
      case 2:
        return HistoryTab(key: _navigatorKeys[2]);
      case 3:
        return BrowseTab(key: _navigatorKeys[3]);
      case 4:
        return MoreTab(key: _navigatorKeys[4]);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildNavigationDestination({
    required IconData icon,
    required IconData selectedIcon,
    required String label,
    int? badgeCount,
  }) {
    return NavigationDestination(
      icon: badgeCount != null && badgeCount > 0
          ? Badge(
              label: Text(badgeCount.toString()),
              child: Icon(icon),
            )
          : Icon(icon),
      selectedIcon: badgeCount != null && badgeCount > 0
          ? Badge(
              label: Text(badgeCount.toString()),
              child: Icon(selectedIcon),
            )
          : Icon(selectedIcon),
      label: label,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _librarySearchController.close();
    _openTabController.close();
    _showBottomNavController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final updatesCount = ref.watch(updatesCountProvider);
    final extensionUpdatesCount = ref.watch(extensionUpdatesCountProvider);
    final isTablet = MediaQuery.of(context).size.width >= 600;

    return PopScope(
      canPop: _currentIndex == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && _currentIndex != 0) {
          _goToLibraryTab();
        }
      },
      child: Scaffold(
        body: Row(
          children: [
            if (isTablet)
              NavigationRail(
                groupAlignment: 0.0,
                selectedIndex: _currentIndex,
                onDestinationSelected: _onTabSelected,
                labelType: NavigationRailLabelType.all,
                destinations: [
                  const NavigationRailDestination(
                    icon: Icon(Icons.collections_bookmark_outlined),
                    selectedIcon: Icon(Icons.collections_bookmark),
                    label: Text('Library'),
                  ),
                  NavigationRailDestination(
                    icon: updatesCount > 0
                        ? Badge(
                            label: Text(updatesCount.toString()),
                            child: const Icon(Icons.new_releases_outlined),
                          )
                        : const Icon(Icons.new_releases_outlined),
                    selectedIcon: updatesCount > 0
                        ? Badge(
                            label: Text(updatesCount.toString()),
                            child: const Icon(Icons.new_releases),
                          )
                        : const Icon(Icons.new_releases),
                    label: const Text('Updates'),
                  ),
                  const NavigationRailDestination(
                    icon: Icon(Icons.history_outlined),
                    selectedIcon: Icon(Icons.history),
                    label: Text('History'),
                  ),
                  NavigationRailDestination(
                    icon: extensionUpdatesCount > 0
                        ? Badge(
                            label: Text(extensionUpdatesCount.toString()),
                            child: const Icon(Icons.explore_outlined),
                          )
                        : const Icon(Icons.explore_outlined),
                    selectedIcon: extensionUpdatesCount > 0
                        ? Badge(
                            label: Text(extensionUpdatesCount.toString()),
                            child: const Icon(Icons.explore),
                          )
                        : const Icon(Icons.explore),
                    label: const Text('Browse'),
                  ),
                  const NavigationRailDestination(
                    icon: Icon(Icons.more_horiz_outlined),
                    selectedIcon: Icon(Icons.more_horiz),
                    label: Text('More'),
                  ),
                ],
              ),
            Expanded(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: IndexedStack(
                  index: _currentIndex,
                  children: List.generate(5, _buildTab),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: !isTablet
            ? AnimatedSlide(
                duration: const Duration(milliseconds: 200),
                offset: _bottomNavVisible ? Offset.zero : const Offset(0, 1),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: _bottomNavVisible ? 1.0 : 0.0,
                  child: NavigationBar(
                    selectedIndex: _currentIndex,
                    onDestinationSelected: _onTabSelected,
                    destinations: [
                      _buildNavigationDestination(
                        icon: Icons.collections_bookmark_outlined,
                        selectedIcon: Icons.collections_bookmark,
                        label: 'Library',
                      ),
                      _buildNavigationDestination(
                        icon: Icons.new_releases_outlined,
                        selectedIcon: Icons.new_releases,
                        label: 'Updates',
                        badgeCount: updatesCount,
                      ),
                      _buildNavigationDestination(
                        icon: Icons.history_outlined,
                        selectedIcon: Icons.history,
                        label: 'History',
                      ),
                      _buildNavigationDestination(
                        icon: Icons.explore_outlined,
                        selectedIcon: Icons.explore,
                        label: 'Browse',
                        badgeCount: extensionUpdatesCount,
                      ),
                      _buildNavigationDestination(
                        icon: Icons.more_horiz_outlined,
                        selectedIcon: Icons.more_horiz,
                        label: 'More',
                      ),
                    ],
                  ),
                ),
              )
            : null,
      ),
    );
  }

  static void search(BuildContext context, String query) {
    final state = context.findAncestorStateOfType<_HomeScreenState>();
    state?._librarySearchController.add(query);
  }

  static void openTab(dynamic tab) {
    // TODO: Implementar usando un GlobalKey o un sistema de eventos global
    debugPrint('Opening tab: $tab');
  }

  static void showBottomNav(BuildContext context, {required bool show}) {
    final state = context.findAncestorStateOfType<_HomeScreenState>();
    state?._showBottomNavController.add(show);
  }
}

sealed class HomeTab {
  int get index;
}

class HomeScreenTab {
  static LibraryTabData library([int? mangaId]) => LibraryTabData(mangaIdToOpen: mangaId);
  static UpdatesTabData get updates => UpdatesTabData();
  static HistoryTabData get history => HistoryTabData();
  static BrowseTabData browse([bool toExtensions = false]) => BrowseTabData(toExtensions: toExtensions);
  static MoreTabData more({bool toDownloads = false}) => MoreTabData(toDownloads: toDownloads);
}

class LibraryTabData extends HomeTab {
  LibraryTabData({this.mangaIdToOpen});
  final int? mangaIdToOpen;

  @override
  int get index => 0;
}

class UpdatesTabData extends HomeTab {
  @override
  int get index => 1;
}

class HistoryTabData extends HomeTab {
  @override
  int get index => 2;
}

class BrowseTabData extends HomeTab {
  BrowseTabData({this.toExtensions = false});
  final bool toExtensions;

  @override
  int get index => 3;
}

class MoreTabData extends HomeTab {
  MoreTabData({this.toDownloads = false});
  final bool toDownloads;

  @override
  int get index => 4;
}
