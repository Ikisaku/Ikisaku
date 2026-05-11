import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ikisaku/src/domain/source/model/source.dart';

part 'migrate_source_screen_model.freezed.dart';

enum MigrateSortingMode { alphabetical, total }

enum MigrateSortingDirection { ascending, descending }

@freezed
abstract class MigrateSourceState with _$MigrateSourceState {
  const factory MigrateSourceState({
    @Default(true) bool isLoading,
    @Default([]) List<SourceWithCount> items,
    @Default(MigrateSortingMode.alphabetical) MigrateSortingMode sortingMode,
    @Default(MigrateSortingDirection.ascending)
    MigrateSortingDirection sortingDirection,
  }) = _MigrateSourceState;

  const MigrateSourceState._();

  bool get isEmpty => items.isEmpty && !isLoading;
}

@freezed
abstract class SourceWithCount with _$SourceWithCount {
  const factory SourceWithCount({required Source source, required int count}) =
      _SourceWithCount;
}

class MigrateSourceScreenModel extends Notifier<MigrateSourceState> {
  @override
  MigrateSourceState build() {
    _init();
    return const MigrateSourceState();
  }

  void _init() {
    // TODO: Conectar con Rust
    // 1. Obtener GetSourcesWithFavoriteCount desde Rust
    // 2. Escuchar cambios en preferencias de ordenamiento (GetMigrateSorting)
    // 3. Aplicar ordenamiento según sortingMode y sortingDirection
    // 4. Actualizar estado
  }

  void toggleSortingMode() {
    final newMode = state.sortingMode == MigrateSortingMode.alphabetical
        ? MigrateSortingMode.total
        : MigrateSortingMode.alphabetical;

    state = state.copyWith(sortingMode: newMode);
    // TODO: Llamar a SetMigrateSorting en Rust con nuevo modo
  }

  void toggleSortingDirection() {
    final newDirection =
        state.sortingDirection == MigrateSortingDirection.ascending
            ? MigrateSortingDirection.descending
            : MigrateSortingDirection.ascending;

    state = state.copyWith(sortingDirection: newDirection);
    // TODO: Llamar a SetMigrateSorting en Rust con nueva dirección
  }
}

final migrateSourceScreenModelProvider =
    NotifierProvider<MigrateSourceScreenModel, MigrateSourceState>(
      MigrateSourceScreenModel.new,
    );
