import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

@freezed
sealed class Manga with _$Manga {
  const factory Manga({
    required int id,
    required int source,
    required String url,
    required String title,
    String? artist,
    String? author,
    String? description,
    List<String>? genre,
    @Default(MangaStatus.unknown) MangaStatus status,
    String? thumbnailUrl,
    @Default(false) bool favorite,
    DateTime? lastUpdate,
    DateTime? dateAdded,
    @Default(0) int viewerFlags,
    @Default(0) int chapterFlags,
    @Default(0) int coverLastModified,
    @Default(false) bool updateStrategy,
    @Default(false) bool initialized,
  }) = _Manga;

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
}

enum MangaStatus {
  unknown,
  ongoing,
  completed,
  licensed,
  publishingFinished,
  cancelled,
  onHiatus,
}
