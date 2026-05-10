import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
sealed class Chapter with _$Chapter {
  const factory Chapter({
    required int id,
    required int mangaId,
    required String url,
    required String name,
    @Default(0.0) double chapterNumber,
    String? scanlator,
    @Default(false) bool read,
    @Default(false) bool bookmark,
    @Default(0) int lastPageRead,
    DateTime? dateFetch,
    DateTime? dateUpload,
    @Default(0) int sourceOrder,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}
