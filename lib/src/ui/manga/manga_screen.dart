import 'package:flutter/material.dart';

class MangaScreen extends StatelessWidget {
  final int mangaId;
  final bool fromSource;

  const MangaScreen({
    super.key,
    required this.mangaId,
    this.fromSource = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manga Details'),
      ),
      body: const Center(
        child: Text('Manga Screen - TODO'),
      ),
    );
  }
}
