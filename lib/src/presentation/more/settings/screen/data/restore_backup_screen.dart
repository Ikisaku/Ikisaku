import 'package:flutter/material.dart';

class RestoreBackupScreen extends StatelessWidget {
  final String uri;

  const RestoreBackupScreen({
    super.key,
    required this.uri,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restore Backup'),
      ),
      body: Center(
        child: Text('Restore Backup Screen - $uri - TODO'),
      ),
    );
  }
}
