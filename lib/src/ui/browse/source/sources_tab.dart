import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/source/model/source.dart';
import 'package:ikisaku/src/presentation/browse/source_ui_model.dart';
import 'sources_screen_model.dart';

class SourcesTab extends ConsumerWidget {
  const SourcesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sourcesScreenModelProvider);

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.source_outlined, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No sources available',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return Stack(
      children: [
        ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final item = state.items[index];
            return item.when(
              header: (language) => _SourceHeader(language: language),
              item: (source) => _SourceItem(
                source: source,
                onClickItem: (source) {
                  // TODO: Navegar a BrowseSourceScreen con Listing.Popular
                },
                onLongClickItem: (source) {
                  ref
                      .read(sourcesScreenModelProvider.notifier)
                      .showSourceDialog(source);
                },
                onClickPin: (source) {
                  ref.read(sourcesScreenModelProvider.notifier).togglePin(
                        source,
                      );
                },
                onClickLatest: (source) {
                  // TODO: Navegar a BrowseSourceScreen con Listing.Latest
                },
              ),
            );
          },
        ),
        if (state.dialog != null)
          _SourceOptionsDialog(
            source: state.dialog!.source,
            onClickPin: () {
              ref
                  .read(sourcesScreenModelProvider.notifier)
                  .togglePin(state.dialog!.source);
              ref.read(sourcesScreenModelProvider.notifier).closeDialog();
            },
            onClickDisable: () {
              ref
                  .read(sourcesScreenModelProvider.notifier)
                  .toggleSource(state.dialog!.source);
              ref.read(sourcesScreenModelProvider.notifier).closeDialog();
            },
            onDismiss: () {
              ref.read(sourcesScreenModelProvider.notifier).closeDialog();
            },
          ),
      ],
    );
  }
}

class _SourceHeader extends StatelessWidget {
  final String language;

  const _SourceHeader({required this.language});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        _getLanguageDisplayName(language),
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }

  String _getLanguageDisplayName(String lang) {
    // TODO: Implementar LocaleHelper.getSourceDisplayName
    switch (lang) {
      case 'pinned':
        return 'Pinned';
      case 'last_used':
        return 'Last used';
      case 'en':
        return 'English';
      case 'es':
        return 'Spanish';
      case 'ja':
        return 'Japanese';
      case 'fr':
        return 'French';
      case 'de':
        return 'German';
      case 'pt':
        return 'Portuguese';
      case 'ru':
        return 'Russian';
      case 'zh':
        return 'Chinese';
      default:
        return lang.toUpperCase();
    }
  }
}

class _SourceItem extends StatelessWidget {
  final Source source;
  final Function(Source) onClickItem;
  final Function(Source) onLongClickItem;
  final Function(Source) onClickPin;
  final Function(Source) onClickLatest;

  const _SourceItem({
    required this.source,
    required this.onClickItem,
    required this.onLongClickItem,
    required this.onClickPin,
    required this.onClickLatest,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        child: Icon(
          Icons.source,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      title: Text(source.visualName),
      subtitle: source.lang.isNotEmpty ? Text(source.lang.toUpperCase()) : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (source.supportsLatest)
            TextButton(
              onPressed: () => onClickLatest(source),
              child: const Text('Latest'),
            ),
          IconButton(
            icon: Icon(
              source.pin.isPinned ? Icons.push_pin : Icons.push_pin_outlined,
            ),
            color: source.pin.isPinned
                ? Theme.of(context).colorScheme.primary
                : null,
            onPressed: () => onClickPin(source),
          ),
        ],
      ),
      onTap: () => onClickItem(source),
      onLongPress: () => onLongClickItem(source),
    );
  }
}

class _SourceOptionsDialog extends StatelessWidget {
  final Source source;
  final VoidCallback onClickPin;
  final VoidCallback onClickDisable;
  final VoidCallback onDismiss;

  const _SourceOptionsDialog({
    required this.source,
    required this.onClickPin,
    required this.onClickDisable,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(source.visualName),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: onClickPin,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                source.pin.isPinned ? 'Unpin' : 'Pin',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          if (!source.isLocal)
            TextButton(
              onPressed: onClickDisable,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  source.isEnabled ? 'Disable' : 'Enable',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onDismiss,
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
