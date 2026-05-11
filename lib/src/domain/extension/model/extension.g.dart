// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableExtension _$AvailableExtensionFromJson(Map<String, dynamic> json) =>
    AvailableExtension(
      pkgName: json['pkgName'] as String,
      name: json['name'] as String,
      versionName: json['versionName'] as String,
      versionCode: (json['versionCode'] as num).toInt(),
      lang: json['lang'] as String,
      isNsfw: json['isNsfw'] as bool? ?? false,
      iconUrl: json['iconUrl'] as String,
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => AvailableSource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AvailableExtensionToJson(AvailableExtension instance) =>
    <String, dynamic>{
      'pkgName': instance.pkgName,
      'name': instance.name,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'lang': instance.lang,
      'isNsfw': instance.isNsfw,
      'iconUrl': instance.iconUrl,
      'sources': instance.sources,
      'runtimeType': instance.$type,
    };

InstalledExtension _$InstalledExtensionFromJson(Map<String, dynamic> json) =>
    InstalledExtension(
      pkgName: json['pkgName'] as String,
      name: json['name'] as String,
      versionName: json['versionName'] as String,
      versionCode: (json['versionCode'] as num).toInt(),
      lang: json['lang'] as String,
      isNsfw: json['isNsfw'] as bool? ?? false,
      hasUpdate: json['hasUpdate'] as bool? ?? false,
      isObsolete: json['isObsolete'] as bool? ?? false,
      isUnofficial: json['isUnofficial'] as bool? ?? false,
      isShared: json['isShared'] as bool? ?? true,
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => InstalledSource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$InstalledExtensionToJson(InstalledExtension instance) =>
    <String, dynamic>{
      'pkgName': instance.pkgName,
      'name': instance.name,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'lang': instance.lang,
      'isNsfw': instance.isNsfw,
      'hasUpdate': instance.hasUpdate,
      'isObsolete': instance.isObsolete,
      'isUnofficial': instance.isUnofficial,
      'isShared': instance.isShared,
      'sources': instance.sources,
      'runtimeType': instance.$type,
    };

UntrustedExtension _$UntrustedExtensionFromJson(Map<String, dynamic> json) =>
    UntrustedExtension(
      pkgName: json['pkgName'] as String,
      name: json['name'] as String,
      versionName: json['versionName'] as String,
      versionCode: (json['versionCode'] as num).toInt(),
      lang: json['lang'] as String,
      isNsfw: json['isNsfw'] as bool? ?? false,
      signatureHash: json['signatureHash'] as String,
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => InstalledSource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UntrustedExtensionToJson(UntrustedExtension instance) =>
    <String, dynamic>{
      'pkgName': instance.pkgName,
      'name': instance.name,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'lang': instance.lang,
      'isNsfw': instance.isNsfw,
      'signatureHash': instance.signatureHash,
      'sources': instance.sources,
      'runtimeType': instance.$type,
    };

_AvailableSource _$AvailableSourceFromJson(Map<String, dynamic> json) =>
    _AvailableSource(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      baseUrl: json['baseUrl'] as String,
    );

Map<String, dynamic> _$AvailableSourceToJson(_AvailableSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'baseUrl': instance.baseUrl,
    };

_InstalledSource _$InstalledSourceFromJson(Map<String, dynamic> json) =>
    _InstalledSource(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      baseUrl: json['baseUrl'] as String,
    );

Map<String, dynamic> _$InstalledSourceToJson(_InstalledSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'baseUrl': instance.baseUrl,
    };
