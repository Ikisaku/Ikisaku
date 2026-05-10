import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'library_screen_model.dart';

class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({super.key});

  static void search(BuildContext context, String query) {
    final state = context.findAncestorStateOfType<_LibraryTabState>();
    state?._performSearch(query);
  }

  static void onReselect(BuildContext context) {
    final state = context.findAncestorStateOfType<_LibraryTabState>();
    state?._onReselect();
  }

  @override
  ConsumerState<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  void _performSearch(String query) {
    // TODO: Implementar búsqueda
  }

  void _onReselect() {
    // TODO: Scroll al inicio o refresh
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = ref.watch(libraryScreenModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implementar búsqueda
            },
          ),
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
      body: state.when(
        data: (data) {
          if (data.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.collections_bookmark_outlined, size: 64),
                  SizedBox(height: 16),
                  Text('Your library is empty'),
                  SizedBox(height: 8),
                  Text('Add manga from Browse'),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListTile(
                title: Text(item.title),
                subtitle: Text('${item.unreadCount} unread'),
                onTap: () {
                  // TODO: Navegar a detalles del manga
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implementar actualización de biblioteca
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
