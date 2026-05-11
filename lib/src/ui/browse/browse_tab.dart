import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'source/sources_tab.dart';
import 'extension/extensions_tab.dart';
import 'extension/extensions_screen_model.dart';
import 'migration/sources/migrate_source_tab.dart';

class BrowseTab extends ConsumerStatefulWidget {
  const BrowseTab({super.key});

  static void showExtensions(BuildContext context) {
    final state = context.findAncestorStateOfType<_BrowseTabState>();
    state?._showExtensions();
  }

  static void onReselect(BuildContext context) {
    final state = context.findAncestorStateOfType<_BrowseTabState>();
    state?._onReselect();
  }

  @override
  ConsumerState<BrowseTab> createState() => _BrowseTabState();
}

class _BrowseTabState extends ConsumerState<BrowseTab>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  late TabController _tabController;

  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  void _showExtensions() {
    _tabController.animateTo(1);
  }

  void _onReselect() {
    // TODO: Implementar navegación a GlobalSearchScreen
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<Widget> _getActions() {
    final currentIndex = _tabController.index;

    if (currentIndex == 0) {
      return [
        IconButton(
          icon: const Icon(Icons.travel_explore_outlined),
          tooltip: 'Global search',
          onPressed: () {
            // TODO: Implementar navegación a GlobalSearchScreen
          },
        ),
        IconButton(
          icon: const Icon(Icons.filter_list_outlined),
          tooltip: 'Filter',
          onPressed: () {
            // TODO: Implementar navegación a SourcesFilterScreen
          },
        ),
      ];
    }

    if (currentIndex == 1) {
      return [
        PopupMenuButton<String>(
          itemBuilder: (context) => [
            const PopupMenuItem(value: 'filter', child: Text('Filter')),
            const PopupMenuItem(
              value: 'repos',
              child: Text('Extension repos'),
            ),
          ],
          onSelected: (value) {
            // TODO: Implementar navegación a ExtensionFilterScreen y ExtensionReposScreen
          },
        ),
      ];
    }

    // Tab de Migrate (índice 2)
    if (currentIndex == 2) {
      return [
        IconButton(
          icon: const Icon(Icons.help_outline),
          tooltip: 'Migration help guide',
          onPressed: () {
            // TODO: Abrir URL de ayuda de migración
          },
        ),
      ];
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final extensionsState = ref.watch(extensionsScreenModelProvider);
    final isSearching = extensionsState.searchQuery != null;

    return Scaffold(
      appBar: AppBar(
        title: isSearching && _tabController.index == 1
            ? TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search extensions...',
                  border: InputBorder.none,
                ),
                onChanged: (query) {
                  ref
                      .read(extensionsScreenModelProvider.notifier)
                      .search(query);
                },
              )
            : const Text('Browse'),
        actions: _getActions(),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Sources'),
            Tab(text: 'Extensions'),
            Tab(text: 'Migrate'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SourcesTab(key: ValueKey('sources_tab')),
          ExtensionsTab(key: ValueKey('extensions_tab')),
          MigrateSourceTab(key: ValueKey('migrate_tab')),
        ],
      ),
    );
  }
}
