import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
abstract class Source with _$Source {
  const Source._();

  const factory Source({
    required int id,
    required String name,
    required String lang,
    @Default(Pin.unpinned) Pin pin,
    @Default(false) bool isUsedLast,
    @Default(true) bool isEnabled,
    @Default(false) bool isStub,
    @Default(false) bool supportsLatest,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  String get visualName => name.isEmpty ? id.toString() : name;

  String key() => '$id';

  bool get isLocal => id == 0;
}

enum Pin {
  unpinned,
  pinned,
  actual;

  bool get isPinned => this == Pin.pinned || this == Pin.actual;
}
