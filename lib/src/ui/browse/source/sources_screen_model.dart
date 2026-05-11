import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ikisaku/src/domain/source/model/source.dart';
import 'package:ikisaku/src/presentation/browse/source_ui_model.dart';

part 'sources_screen_model.freezed.dart';

@freezed
abstract class SourcesState with _$SourcesState {
  const factory SourcesState({
    @Default(true) bool isLoading,
    @Default([]) List<SourceUiModel> items,
    SourceDialog? dialog,
  }) = _SourcesState;

  const SourcesState._();

  bool get isEmpty => items.isEmpty && !isLoading;
}

@freezed
abstract class SourceDialog with _$SourceDialog {
  const factory SourceDialog({required Source source}) = _SourceDialog;
}

class SourcesScreenModel extends Notifier<SourcesState> {
  @override
  SourcesState build() {
    _init();
    return const SourcesState();
  }

  void _init() {
    // TODO: Conectar con Rust
    // 1. Obtener GetEnabledSources desde Rust
    // 2. Combinar con GetPinnedSources y GetLastUsedSource
    // 3. Organizar en grupos: Pinned, Last Used, luego por idioma
    // 4. Escuchar cambios y actualizar estado
  }

  void toggleSource(Source source) {
    // TODO: Llamar a ToggleSource en Rust
  }

  void togglePin(Source source) {
    // TODO: Llamar a ToggleSourcePin en Rust
  }

  void showSourceDialog(Source source) {
    state = state.copyWith(dialog: SourceDialog(source: source));
  }

  void closeDialog() {
    state = state.copyWith(dialog: null);
  }
}

final sourcesScreenModelProvider =
    NotifierProvider<SourcesScreenModel, SourcesState>(SourcesScreenModel.new);
