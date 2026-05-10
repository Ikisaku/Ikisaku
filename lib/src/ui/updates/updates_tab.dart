import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdatesTab extends ConsumerStatefulWidget {
  const UpdatesTab({super.key});

  static void onReselect(BuildContext context) {
    final state = context.findAncestorStateOfType<_UpdatesTabState>();
    state?._onReselect();
  }

  @override
  ConsumerState<UpdatesTab> createState() => _UpdatesTabState();
}

class _UpdatesTabState extends ConsumerState<UpdatesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  void _onReselect() {
    // TODO: Scroll al inicio o refresh
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Updates'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // TODO: Implementar filtros
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // TODO: Implementar menú
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Updates Tab - TODO'),
      ),
    );
  }
}
