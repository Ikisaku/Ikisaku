import 'package:flutter/material.dart';

class GlobalSearchScreen extends StatelessWidget {
  final String query;
  final String? filter;

  const GlobalSearchScreen({
    super.key,
    required this.query,
    this.filter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search: $query'),
      ),
      body: const Center(
        child: Text('Global Search Screen - TODO'),
      ),
    );
  }
}
