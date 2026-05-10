import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
sealed class Source with _$Source {
  const factory Source({
    required int id,
    required String name,
    required String lang,
    @Default(false) bool isNsfw,
    String? iconUrl,
    required String wasmId,
    String? wasmVersion,
    DateTime? lastUpdate,
    @Default(false) bool isInstalled,
    @Default(false) bool hasUpdate,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
