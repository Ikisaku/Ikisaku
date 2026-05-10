// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Manga _$MangaFromJson(Map<String, dynamic> json) => _Manga(
  id: (json['id'] as num).toInt(),
  source: (json['source'] as num).toInt(),
  url: json['url'] as String,
  title: json['title'] as String,
  artist: json['artist'] as String?,
  author: json['author'] as String?,
  description: json['description'] as String?,
  genre: (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
  status:
      $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
      MangaStatus.unknown,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  favorite: json['favorite'] as bool? ?? false,
  lastUpdate: json['lastUpdate'] == null
      ? null
      : DateTime.parse(json['lastUpdate'] as String),
  dateAdded: json['dateAdded'] == null
      ? null
      : DateTime.parse(json['dateAdded'] as String),
  viewerFlags: (json['viewerFlags'] as num?)?.toInt() ?? 0,
  chapterFlags: (json['chapterFlags'] as num?)?.toInt() ?? 0,
  coverLastModified: (json['coverLastModified'] as num?)?.toInt() ?? 0,
  updateStrategy: json['updateStrategy'] as bool? ?? false,
  initialized: json['initialized'] as bool? ?? false,
);

Map<String, dynamic> _$MangaToJson(_Manga instance) => <String, dynamic>{
  'id': instance.id,
  'source': instance.source,
  'url': instance.url,
  'title': instance.title,
  'artist': instance.artist,
  'author': instance.author,
  'description': instance.description,
  'genre': instance.genre,
  'status': _$MangaStatusEnumMap[instance.status]!,
  'thumbnailUrl': instance.thumbnailUrl,
  'favorite': instance.favorite,
  'lastUpdate': instance.lastUpdate?.toIso8601String(),
  'dateAdded': instance.dateAdded?.toIso8601String(),
  'viewerFlags': instance.viewerFlags,
  'chapterFlags': instance.chapterFlags,
  'coverLastModified': instance.coverLastModified,
  'updateStrategy': instance.updateStrategy,
  'initialized': instance.initialized,
};

const _$MangaStatusEnumMap = {
  MangaStatus.unknown: 'unknown',
  MangaStatus.ongoing: 'ongoing',
  MangaStatus.completed: 'completed',
  MangaStatus.licensed: 'licensed',
  MangaStatus.publishingFinished: 'publishingFinished',
  MangaStatus.cancelled: 'cancelled',
  MangaStatus.onHiatus: 'onHiatus',
};
