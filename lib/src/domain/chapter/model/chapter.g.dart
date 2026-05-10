// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chapter _$ChapterFromJson(Map<String, dynamic> json) => _Chapter(
  id: (json['id'] as num).toInt(),
  mangaId: (json['mangaId'] as num).toInt(),
  url: json['url'] as String,
  name: json['name'] as String,
  chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? 0.0,
  scanlator: json['scanlator'] as String?,
  read: json['read'] as bool? ?? false,
  bookmark: json['bookmark'] as bool? ?? false,
  lastPageRead: (json['lastPageRead'] as num?)?.toInt() ?? 0,
  dateFetch: json['dateFetch'] == null
      ? null
      : DateTime.parse(json['dateFetch'] as String),
  dateUpload: json['dateUpload'] == null
      ? null
      : DateTime.parse(json['dateUpload'] as String),
  sourceOrder: (json['sourceOrder'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ChapterToJson(_Chapter instance) => <String, dynamic>{
  'id': instance.id,
  'mangaId': instance.mangaId,
  'url': instance.url,
  'name': instance.name,
  'chapterNumber': instance.chapterNumber,
  'scanlator': instance.scanlator,
  'read': instance.read,
  'bookmark': instance.bookmark,
  'lastPageRead': instance.lastPageRead,
  'dateFetch': instance.dateFetch?.toIso8601String(),
  'dateUpload': instance.dateUpload?.toIso8601String(),
  'sourceOrder': instance.sourceOrder,
};
