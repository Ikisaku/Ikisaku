import 'package:flutter_riverpod/flutter_riverpod.dart';

class MangaData {
  final int id;
  final String title;
  final String? author;
  final String? artist;
  final String? description;
  final String? coverUrl;
  final List<ChapterData> chapters;
  final bool inLibrary;

  const MangaData({
    required this.id,
    required this.title,
    this.author,
    this.artist,
    this.description,
    this.coverUrl,
    this.chapters = const [],
    this.inLibrary = false,
  });
}

class ChapterData {
  final int id;
  final String name;
  final String? dateUpload;
  final bool read;
  final bool downloaded;

  const ChapterData({
    required this.id,
    required this.name,
    this.dateUpload,
    this.read = false,
    this.downloaded = false,
  });
}

final mangaScreenModelProvider =
    FutureProvider.family<MangaData?, int>((ref, mangaId) async {
  // TODO: Llamar a Rust para obtener los datos del manga
  // final manga = await rust_api.getManga(mangaId);

  await Future.delayed(const Duration(seconds: 1));

  return MangaData(
    id: mangaId,
    title: 'Sample Manga $mangaId',
    author: 'Sample Author',
    description: 'This is a sample manga description.',
    coverUrl: null,
    chapters: List.generate(
      10,
      (index) => ChapterData(
        id: index,
        name: 'Chapter ${index + 1}',
        dateUpload: '2024-01-01',
        read: false,
      ),
    ),
  );
});

class MangaNotifier {
  Future<void> toggleInLibrary(int mangaId) async {
    // TODO: Llamar a Rust para agregar/quitar de biblioteca
    // await rust_api.toggleMangaInLibrary(mangaId);
  }

  Future<void> markChapterRead(int chapterId, bool read) async {
    // TODO: Llamar a Rust para marcar capítulo como leído
    // await rust_api.markChapterRead(chapterId, read);
  }
}

final mangaNotifierProvider = Provider((ref) => MangaNotifier());
