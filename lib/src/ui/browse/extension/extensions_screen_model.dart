import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ikisaku/src/domain/extension/model/extension.dart';
import 'package:ikisaku/src/presentation/browse/extension_ui_model.dart';

part 'extensions_screen_model.freezed.dart';

@freezed
abstract class ExtensionsState with _$ExtensionsState {
  const factory ExtensionsState({
    @Default(true) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default({}) Map<ExtensionHeader, List<ExtensionUiModel>> items,
    @Default(0) int updates,
    String? searchQuery,
  }) = _ExtensionsState;

  const ExtensionsState._();

  bool get isEmpty => items.isEmpty && !isLoading;
}

class ExtensionsScreenModel extends Notifier<ExtensionsState> {
  @override
  ExtensionsState build() {
    _init();
    return const ExtensionsState();
  }

  void _init() {
    // TODO: Conectar con Rust
    // 1. Combinar streams: searchQuery (debounced), currentDownloads, getExtensions
    // 2. Filtrar por searchQuery si no es null
    // 3. Organizar en grupos:
    //    - Updates pending (extensiones instaladas con hasUpdate = true)
    //    - Installed (extensiones instaladas)
    //    - Available por idioma (extensiones disponibles agrupadas por lang)
    // 4. Actualizar contador de updates
  }

  void search(String? query) {
    state = state.copyWith(searchQuery: query);
    // TODO: Aplicar filtro con debounce (500ms)
  }

  void installExtension(Extension extension) {
    // TODO: Llamar a InstallExtension en Rust
    // Escuchar stream de InstallStep y actualizar ExtensionUiModel correspondiente
  }

  void updateExtension(Extension extension) {
    // TODO: Llamar a UpdateExtension en Rust
    // Escuchar stream de InstallStep
  }

  void updateAllExtensions() {
    // TODO: Iterar sobre todas las extensiones con hasUpdate = true
    // Llamar updateExtension() para cada una
  }

  void cancelInstallUpdateExtension(Extension extension) {
    // TODO: Llamar a CancelInstallUpdate en Rust
  }

  void uninstallExtension(Extension extension) {
    // TODO: Llamar a UninstallExtension en Rust
  }

  void trustExtension(Extension extension) {
    // TODO: Llamar a TrustExtension en Rust
  }

  void findAvailableExtensions() {
    state = state.copyWith(isRefreshing: true);
    // TODO: Llamar a FindAvailableExtensions en Rust
    // Después de completar, isRefreshing = false
  }
}

final extensionsScreenModelProvider =
    NotifierProvider<ExtensionsScreenModel, ExtensionsState>(
      ExtensionsScreenModel.new,
    );
