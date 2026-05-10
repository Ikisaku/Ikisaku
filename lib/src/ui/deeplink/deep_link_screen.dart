import 'package:flutter/material.dart';

class DeepLinkScreen extends StatelessWidget {
  final String query;

  const DeepLinkScreen({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deep Link'),
      ),
      body: Center(
        child: Text('Deep Link Screen - Query: $query - TODO'),
      ),
    );
  }
}
