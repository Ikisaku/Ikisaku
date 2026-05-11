import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'migrate_source_screen_model.dart';

class MigrateSourceTab extends ConsumerWidget {
  const MigrateSourceTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(migrateSourceScreenModelProvider);

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.library_books_outlined, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No sources with favorites',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        _MigrateSortingHeader(
          sortingMode: state.sortingMode,
          sortingDirection: state.sortingDirection,
          onToggleMode: () {
            ref
                .read(migrateSourceScreenModelProvider.notifier)
                .toggleSortingMode();
          },
          onToggleDirection: () {
            ref
                .read(migrateSourceScreenModelProvider.notifier)
                .toggleSortingDirection();
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              final item = state.items[index];
              return _MigrateSourceItem(
                sourceWithCount: item,
                onClickItem: () {
                  // TODO: Navegar a MigrateMangaScreen
                },
                onLongClickItem: () {
                  Clipboard.setData(
                    ClipboardData(text: item.source.id.toString()),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Copied source ID: ${item.source.id}'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _MigrateSortingHeader extends StatelessWidget {
  final MigrateSortingMode sortingMode;
  final MigrateSortingDirection sortingDirection;
  final VoidCallback onToggleMode;
  final VoidCallback onToggleDirection;

  const _MigrateSortingHeader({
    required this.sortingMode,
    required this.sortingDirection,
    required this.onToggleMode,
    required this.onToggleDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Select source to migrate from',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          IconButton(
            icon: Icon(
              sortingMode == MigrateSortingMode.alphabetical
                  ? Icons.sort_by_alpha
                  : Icons.numbers,
            ),
            tooltip: sortingMode == MigrateSortingMode.alphabetical
                ? 'Sort alphabetically'
                : 'Sort by count',
            onPressed: onToggleMode,
          ),
          IconButton(
            icon: Icon(
              sortingDirection == MigrateSortingDirection.ascending
                  ? Icons.arrow_upward
                  : Icons.arrow_downward,
            ),
            tooltip: sortingDirection == MigrateSortingDirection.ascending
                ? 'Ascending'
                : 'Descending',
            onPressed: onToggleDirection,
          ),
        ],
      ),
    );
  }
}

class _MigrateSourceItem extends StatelessWidget {
  final SourceWithCount sourceWithCount;
  final VoidCallback onClickItem;
  final VoidCallback onLongClickItem;

  const _MigrateSourceItem({
    required this.sourceWithCount,
    required this.onClickItem,
    required this.onLongClickItem,
  });

  @override
  Widget build(BuildContext context) {
    final source = sourceWithCount.source;
    final count = sourceWithCount.count;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        child: Icon(
          Icons.source,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      title: Text(source.visualName),
      subtitle: Row(
        children: [
          if (source.lang.isNotEmpty) ...[
            Text(source.lang.toUpperCase()),
            const SizedBox(width: 8),
          ],
          if (source.isStub)
            Text(
              'Not installed',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
        ],
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          count.toString(),
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: onClickItem,
      onLongPress: onLongClickItem,
    );
  }
}
