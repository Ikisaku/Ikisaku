// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Source _$SourceFromJson(Map<String, dynamic> json) => _Source(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  lang: json['lang'] as String,
  isNsfw: json['isNsfw'] as bool? ?? false,
  iconUrl: json['iconUrl'] as String?,
  wasmId: json['wasmId'] as String,
  wasmVersion: json['wasmVersion'] as String?,
  lastUpdate: json['lastUpdate'] == null
      ? null
      : DateTime.parse(json['lastUpdate'] as String),
  isInstalled: json['isInstalled'] as bool? ?? false,
  hasUpdate: json['hasUpdate'] as bool? ?? false,
);

Map<String, dynamic> _$SourceToJson(_Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lang': instance.lang,
  'isNsfw': instance.isNsfw,
  'iconUrl': instance.iconUrl,
  'wasmId': instance.wasmId,
  'wasmVersion': instance.wasmVersion,
  'lastUpdate': instance.lastUpdate?.toIso8601String(),
  'isInstalled': instance.isInstalled,
  'hasUpdate': instance.hasUpdate,
};
