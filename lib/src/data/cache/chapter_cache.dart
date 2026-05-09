import 'package:flutter_riverpod/flutter_riverpod.dart';

final chapterCacheProvider = Provider<ChapterCache>((ref) {
  return ChapterCache();
});

class ChapterCache {
  Future<void> clear() async {
    // TODO: Implementar limpieza del caché de capítulos
    // Elimina imágenes temporales y datos en caché
  }

  Future<int> getSize() async {
    // TODO: Implementar obtención del tamaño del caché
    return 0;
  }
}
