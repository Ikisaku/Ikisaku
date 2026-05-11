// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Source _$SourceFromJson(Map<String, dynamic> json) => _Source(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  lang: json['lang'] as String,
  pin: $enumDecodeNullable(_$PinEnumMap, json['pin']) ?? Pin.unpinned,
  isUsedLast: json['isUsedLast'] as bool? ?? false,
  isEnabled: json['isEnabled'] as bool? ?? true,
  isStub: json['isStub'] as bool? ?? false,
  supportsLatest: json['supportsLatest'] as bool? ?? false,
);

Map<String, dynamic> _$SourceToJson(_Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lang': instance.lang,
  'pin': _$PinEnumMap[instance.pin]!,
  'isUsedLast': instance.isUsedLast,
  'isEnabled': instance.isEnabled,
  'isStub': instance.isStub,
  'supportsLatest': instance.supportsLatest,
};

const _$PinEnumMap = {
  Pin.unpinned: 'unpinned',
  Pin.pinned: 'pinned',
  Pin.actual: 'actual',
};
