import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final imageLoaderManagerProvider = Provider<ImageLoaderManager>((ref) {
  return ImageLoaderManager();
});

class ImageLoaderManager {
  bool _initialized = false;

  void initialize() {
    if (_initialized) return;

    // TODO: Configurar cache de imágenes
    _initialized = true;
    debugPrint('ImageLoaderManager initialized');
  }

  Future<void> clearCache() async {
    // TODO: Implementar limpieza de cache
    // await CachedNetworkImage.evictFromCache(url);
    debugPrint('Image cache cleared');
  }

  Future<int> getCacheSize() async {
    // TODO: Implementar obtención de tamaño de cache
    return 0;
  }
}
