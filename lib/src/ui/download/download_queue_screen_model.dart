import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadData {
  final int id;
  final String mangaTitle;
  final String chapterName;
  final String? coverUrl;
  final double progress;
  final DownloadStatus status;

  const DownloadData({
    required this.id,
    required this.mangaTitle,
    required this.chapterName,
    this.coverUrl,
    required this.progress,
    required this.status,
  });
}

enum DownloadStatus {
  queued,
  downloading,
  paused,
  completed,
  error,
}

final downloadQueueScreenModelProvider =
    FutureProvider<List<DownloadData>>((ref) async {
  // TODO: Llamar a Rust para obtener la cola de descargas
  // final downloads = await rust_api.getDownloadQueue();

  await Future.delayed(const Duration(milliseconds: 500));

  return [
    const DownloadData(
      id: 1,
      mangaTitle: 'Sample Manga 1',
      chapterName: 'Chapter 1',
      progress: 0.5,
      status: DownloadStatus.downloading,
    ),
    const DownloadData(
      id: 2,
      mangaTitle: 'Sample Manga 2',
      chapterName: 'Chapter 5',
      progress: 0.2,
      status: DownloadStatus.queued,
    ),
  ];
});

class DownloadQueueNotifier {
  Future<void> pauseDownloads() async {
    // TODO: Llamar a Rust para pausar descargas
    // await rust_api.pauseDownloads();
  }

  Future<void> resumeDownloads() async {
    // TODO: Llamar a Rust para reanudar descargas
    // await rust_api.resumeDownloads();
  }

  Future<void> cancelDownload(int downloadId) async {
    // TODO: Llamar a Rust para cancelar descarga
    // await rust_api.cancelDownload(downloadId);
  }

  Future<void> clearQueue() async {
    // TODO: Llamar a Rust para limpiar cola
    // await rust_api.clearDownloadQueue();
  }
}

final downloadQueueNotifierProvider = Provider((ref) => DownloadQueueNotifier());
