import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/extension/model/extension.dart';
import 'package:ikisaku/src/domain/extension/model/install_step.dart';
import 'package:ikisaku/src/presentation/browse/extension_ui_model.dart';
import 'extensions_screen_model.dart';

class ExtensionsTab extends ConsumerStatefulWidget {
  const ExtensionsTab({super.key});

  @override
  ConsumerState<ExtensionsTab> createState() => _ExtensionsTabState();
}

class _ExtensionsTabState extends ConsumerState<ExtensionsTab> {
  Extension? _extensionToUninstall;
  UntrustedExtension? _extensionToTrust;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(extensionsScreenModelProvider);

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.extension_outlined, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              'No extensions found',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Navegar a ExtensionReposScreen
              },
              icon: const Icon(Icons.settings),
              label: const Text('Extension repos'),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        ref
            .read(extensionsScreenModelProvider.notifier)
            .findAvailableExtensions();
      },
      child: Stack(
        children: [
          _buildExtensionsList(state),
          if (_extensionToUninstall != null) _buildUninstallDialog(),
          if (_extensionToTrust != null) _buildTrustDialog(),
        ],
      ),
    );
  }

  Widget _buildExtensionsList(ExtensionsState state) {
    return ListView.builder(
      itemCount: _calculateItemCount(state.items),
      itemBuilder: (context, index) {
        return _buildListItem(context, state.items, index);
      },
    );
  }

  int _calculateItemCount(Map<ExtensionHeader, List<ExtensionUiModel>> items) {
    return items.entries.fold(0, (sum, entry) => sum + 1 + entry.value.length);
  }

  Widget _buildListItem(
    BuildContext context,
    Map<ExtensionHeader, List<ExtensionUiModel>> items,
    int index,
  ) {
    int currentIndex = 0;

    for (final entry in items.entries) {
      if (currentIndex == index) {
        return entry.key.when(
          resource: (textRes) => _ExtensionHeader(
            text: _getResourceString(textRes),
            showUpdateAll: textRes == 'ext_updates_pending',
            onUpdateAll: () {
              ref
                  .read(extensionsScreenModelProvider.notifier)
                  .updateAllExtensions();
            },
          ),
          text: (text) => _ExtensionHeader(text: text),
        );
      }
      currentIndex++;

      for (final item in entry.value) {
        if (currentIndex == index) {
          return _ExtensionItem(
            item: item,
            onClickItem: (ext) => _onClickExtension(ext),
            onLongClickItem: (ext) => _onLongClickExtension(ext),
            onClickCancel: (ext) {
              ref
                  .read(extensionsScreenModelProvider.notifier)
                  .cancelInstallUpdateExtension(ext);
            },
            onClickAction: (ext) => _onClickAction(ext),
          );
        }
        currentIndex++;
      }
    }

    return const SizedBox.shrink();
  }

  void _onClickExtension(Extension extension) {
    extension.when(
      available: (pkg, name, ver, code, lang, nsfw, icon, sources) {
        ref
            .read(extensionsScreenModelProvider.notifier)
            .installExtension(extension as AvailableExtension);
      },
      installed:
          (
            pkg,
            name,
            ver,
            code,
            lang,
            nsfw,
            update,
            obs,
            unoff,
            shared,
            sources,
          ) {
            // TODO: Navegar a ExtensionDetailsScreen
          },
      untrusted: (pkg, name, ver, code, lang, nsfw, sig, sources) {
        setState(() {
          _extensionToTrust = extension as UntrustedExtension;
        });
      },
    );
  }

  void _onLongClickExtension(Extension extension) {
    setState(() {
      _extensionToUninstall = extension;
    });
  }

  void _onClickAction(Extension extension) {
    extension.when(
      available: (pkg, name, ver, code, lang, nsfw, icon, sources) {
        ref
            .read(extensionsScreenModelProvider.notifier)
            .installExtension(extension as AvailableExtension);
      },
      installed:
          (
            pkg,
            name,
            ver,
            code,
            lang,
            nsfw,
            update,
            obs,
            unoff,
            shared,
            sources,
          ) {
            if (update) {
              ref
                  .read(extensionsScreenModelProvider.notifier)
                  .updateExtension(extension as InstalledExtension);
            } else {
              // TODO: Navegar a ExtensionDetailsScreen
            }
          },
      untrusted: (pkg, name, ver, code, lang, nsfw, sig, sources) {
        setState(() {
          _extensionToTrust = extension as UntrustedExtension;
        });
      },
    );
  }

  Widget _buildUninstallDialog() {
    return AlertDialog(
      title: const Text('Confirm removal'),
      content: Text('Remove extension ${_extensionToUninstall?.name}?'),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              _extensionToUninstall = null;
            });
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            ref
                .read(extensionsScreenModelProvider.notifier)
                .uninstallExtension(_extensionToUninstall!);
            setState(() {
              _extensionToUninstall = null;
            });
          },
          child: const Text('Remove'),
        ),
      ],
    );
  }

  Widget _buildTrustDialog() {
    return AlertDialog(
      title: const Text('Untrusted extension'),
      content: const Text(
        'This extension is not from an official source. Do you want to trust it?',
      ),
      actions: [
        TextButton(
          onPressed: () {
            ref
                .read(extensionsScreenModelProvider.notifier)
                .uninstallExtension(_extensionToTrust!);
            setState(() {
              _extensionToTrust = null;
            });
          },
          child: const Text('Uninstall'),
        ),
        TextButton(
          onPressed: () {
            ref
                .read(extensionsScreenModelProvider.notifier)
                .trustExtension(_extensionToTrust!);
            setState(() {
              _extensionToTrust = null;
            });
          },
          child: const Text('Trust'),
        ),
      ],
    );
  }

  String _getResourceString(String key) {
    // TODO: Implementar i18n
    switch (key) {
      case 'ext_updates_pending':
        return 'Updates pending';
      case 'ext_installed':
        return 'Installed';
      default:
        return key;
    }
  }
}

class _ExtensionHeader extends StatelessWidget {
  final String text;
  final bool showUpdateAll;
  final VoidCallback? onUpdateAll;

  const _ExtensionHeader({
    required this.text,
    this.showUpdateAll = false,
    this.onUpdateAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
          if (showUpdateAll && onUpdateAll != null)
            ElevatedButton(
              onPressed: onUpdateAll,
              child: const Text('Update all'),
            ),
        ],
      ),
    );
  }
}

class _ExtensionItem extends StatelessWidget {
  final ExtensionUiModel item;
  final Function(Extension) onClickItem;
  final Function(Extension) onLongClickItem;
  final Function(Extension) onClickCancel;
  final Function(Extension) onClickAction;

  const _ExtensionItem({
    required this.item,
    required this.onClickItem,
    required this.onLongClickItem,
    required this.onClickCancel,
    required this.onClickAction,
  });

  @override
  Widget build(BuildContext context) {
    return item.when(
      item: (extension, installStep) {
        return ListTile(
          leading: Stack(
            alignment: Alignment.center,
            children: [
              if (!installStep.isCompleted())
                const SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  Icons.extension,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          title: Text(extension.name),
          subtitle: _buildSubtitle(context, extension, installStep),
          trailing: _buildActions(context, extension, installStep),
          onTap: () => onClickItem(extension),
          onLongPress: () => onLongClickItem(extension),
        );
      },
    );
  }

  Widget _buildSubtitle(
    BuildContext context,
    Extension extension,
    InstallStep installStep,
  ) {
    final parts = <String>[];

    extension.when(
      available: (pkg, name, ver, code, lang, nsfw, icon, sources) {
        if (lang.isNotEmpty) parts.add(lang.toUpperCase());
        if (ver.isNotEmpty) parts.add(ver);
        if (nsfw) parts.add('NSFW');
      },
      installed:
          (
            pkg,
            name,
            ver,
            code,
            lang,
            nsfw,
            update,
            obs,
            unoff,
            shared,
            sources,
          ) {
            if (lang.isNotEmpty) parts.add(lang.toUpperCase());
            if (ver.isNotEmpty) parts.add(ver);
            if (obs) parts.add('OBSOLETE');
            if (nsfw) parts.add('NSFW');
            if (!shared) parts.add('Private');
          },
      untrusted: (pkg, name, ver, code, lang, nsfw, sig, sources) {
        parts.add('UNTRUSTED');
        if (nsfw) parts.add('NSFW');
      },
    );

    if (!installStep.isCompleted()) {
      parts.add(_getInstallStepText(installStep));
    }

    return Text(
      parts.join(' • '),
      style: TextStyle(
        color: Theme.of(context).textTheme.bodySmall?.color,
      ),
    );
  }

  Widget _buildActions(
    BuildContext context,
    Extension extension,
    InstallStep installStep,
  ) {
    if (!installStep.isCompleted()) {
      return IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => onClickCancel(extension),
      );
    }

    if (installStep == InstallStep.error) {
      return IconButton(
        icon: const Icon(Icons.refresh),
        onPressed: () => onClickAction(extension),
      );
    }

    return extension.when(
      available: (pkg, name, ver, code, lang, nsfw, icon, sources) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (sources.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.public),
                onPressed: () {
                  // TODO: Abrir WebView
                },
              ),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () => onClickAction(extension),
            ),
          ],
        );
      },
      installed:
          (
            pkg,
            name,
            ver,
            code,
            lang,
            nsfw,
            update,
            obs,
            unoff,
            shared,
            sources,
          ) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // TODO: Navegar a ExtensionDetailsScreen
                  },
                ),
                if (update)
                  IconButton(
                    icon: const Icon(Icons.download),
                    onPressed: () => onClickAction(extension),
                  ),
              ],
            );
          },
      untrusted: (pkg, name, ver, code, lang, nsfw, sig, sources) {
        return IconButton(
          icon: const Icon(Icons.verified_user),
          onPressed: () => onClickAction(extension),
        );
      },
    );
  }

  String _getInstallStepText(InstallStep step) {
    switch (step) {
      case InstallStep.pending:
        return 'Pending';
      case InstallStep.downloading:
        return 'Downloading';
      case InstallStep.installing:
        return 'Installing';
      default:
        return '';
    }
  }
}
