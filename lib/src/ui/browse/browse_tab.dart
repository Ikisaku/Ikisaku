import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  void _showExtensions() {
    _tabController.animateTo(1);
  }

  void _onReselect() {
    // TODO: Scroll al inicio o refresh
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse'),
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
          Center(child: Text('Sources - TODO')),
          Center(child: Text('Extensions - TODO')),
          Center(child: Text('Migrate - TODO')),
        ],
      ),
    );
  }
}
