import 'package:flutter/material.dart';

class ExtensionReposScreen extends StatelessWidget {
  final String? repoUrl;

  const ExtensionReposScreen({
    super.key,
    this.repoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extension Repositories'),
      ),
      body: Center(
        child: Text('Extension Repos Screen - ${repoUrl ?? "No URL"} - TODO'),
      ),
    );
  }
}
