import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_manga.freezed.dart';
part 'library_manga.g.dart';

@freezed
sealed class LibraryManga with _$LibraryManga {
  const factory LibraryManga({
    required int id,
    required String title,
    required String thumbnailUrl,
    @Default(0) int unreadCount,
    @Default(0) int downloadCount,
    @Default(false) bool favorite,
    @Default([]) List<int> categories,
    DateTime? lastRead,
    DateTime? lastUpdate,
  }) = _LibraryManga;

  factory LibraryManga.fromJson(Map<String, dynamic> json) =>
      _$LibraryMangaFromJson(json);
}
