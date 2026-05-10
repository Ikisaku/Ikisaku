// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryManga _$LibraryMangaFromJson(Map<String, dynamic> json) =>
    _LibraryManga(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
      downloadCount: (json['downloadCount'] as num?)?.toInt() ?? 0,
      favorite: json['favorite'] as bool? ?? false,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      lastRead: json['lastRead'] == null
          ? null
          : DateTime.parse(json['lastRead'] as String),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$LibraryMangaToJson(_LibraryManga instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'unreadCount': instance.unreadCount,
      'downloadCount': instance.downloadCount,
      'favorite': instance.favorite,
      'categories': instance.categories,
      'lastRead': instance.lastRead?.toIso8601String(),
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
    };
