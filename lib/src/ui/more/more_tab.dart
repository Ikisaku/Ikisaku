import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreTab extends ConsumerStatefulWidget {
  const MoreTab({super.key});

  static void onReselect(BuildContext context) {
    final state = context.findAncestorStateOfType<_MoreTabState>();
    state?._onReselect();
  }

  @override
  ConsumerState<MoreTab> createState() => _MoreTabState();
}

class _MoreTabState extends ConsumerState<MoreTab>
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
        title: const Text('More'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Download queue'),
            onTap: () {
              // TODO: Navegar a cola de descargas
            },
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categories'),
            onTap: () {
              // TODO: Navegar a categorías
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Statistics'),
            onTap: () {
              // TODO: Navegar a estadísticas
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.storage),
            title: const Text('Data and storage'),
            onTap: () {
              // TODO: Navegar a datos y almacenamiento
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // TODO: Navegar a configuración
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Support us'),
            onTap: () {
              // TODO: Navegar a soporte
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // TODO: Navegar a acerca de
            },
          ),
        ],
      ),
    );
  }
}
