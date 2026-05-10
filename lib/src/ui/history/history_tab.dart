import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryTab extends ConsumerStatefulWidget {
  const HistoryTab({super.key});

  static void onReselect(BuildContext context) {
    final state = context.findAncestorStateOfType<_HistoryTabState>();
    state?._onReselect();
  }

  @override
  ConsumerState<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends ConsumerState<HistoryTab>
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
        title: const Text('History'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implementar búsqueda
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
        child: Text('History Tab - TODO'),
      ),
    );
  }
}
