import 'package:flutter/material.dart';

class BrowseSourceScreen extends StatelessWidget {
  final int sourceId;

  const BrowseSourceScreen({
    super.key,
    required this.sourceId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Source'),
      ),
      body: const Center(
        child: Text('Browse Source Screen - TODO'),
      ),
    );
  }
}
