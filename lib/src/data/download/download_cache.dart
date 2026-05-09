import 'package:flutter_riverpod/flutter_riverpod.dart';

final downloadCacheProvider = Provider<DownloadCache>((ref) {
  return DownloadCache();
});

class DownloadCache {
  bool _isInitializing = false;

  bool get isInitializing => _isInitializing;

  Stream<bool> get isInitializingStream async* {
    yield _isInitializing;
    // TODO: Implementar stream real de estado de inicialización
  }

  Future<void> initialize() async {
    _isInitializing = true;
    try {
      // TODO: Implementar inicialización del caché
      await Future.delayed(const Duration(seconds: 1));
    } finally {
      _isInitializing = false;
    }
  }

  Future<void> clear() async {
    // TODO: Implementar limpieza del caché
  }
}
