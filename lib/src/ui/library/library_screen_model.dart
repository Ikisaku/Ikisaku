import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/library/model/library_manga.dart';

final libraryScreenModelProvider =
    FutureProvider<List<LibraryManga>>((ref) async {
  // TODO: Implementar carga de biblioteca desde Rust
  return [];
});

class LibraryScreenModel {

  void search(String? query) {
    // TODO: Implementar búsqueda
  }

  void updateActiveCategoryIndex(int index) {
    // TODO: Implementar cambio de categoría
  }

  void clearSelection() {
    // TODO: Implementar limpieza de selección
  }

  void selectAll() {
    // TODO: Implementar selección de todo
  }

  void invertSelection() {
    // TODO: Implementar inversión de selección
  }

  void showSettingsDialog() {
    // TODO: Implementar diálogo de configuración
  }

  void markReadSelection(bool read) {
    // TODO: Implementar marcado como leído
  }

  void openChangeCategoryDialog() {
    // TODO: Implementar diálogo de cambio de categoría
  }

  void openDeleteMangaDialog() {
    // TODO: Implementar diálogo de eliminación
  }

  void performDownloadAction(DownloadAction action) {
    // TODO: Implementar acción de descarga
  }
}

enum DownloadAction {
  next1Chapter,
  next5Chapters,
  next10Chapters,
  next25Chapters,
  unreadChapters,
  bookmarkedChapters,
}
