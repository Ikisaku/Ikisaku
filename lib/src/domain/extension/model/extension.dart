import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension.freezed.dart';
part 'extension.g.dart';

@freezed
abstract class Extension with _$Extension {
  const factory Extension.available({
    required String pkgName,
    required String name,
    required String versionName,
    required int versionCode,
    required String lang,
    @Default(false) bool isNsfw,
    required String iconUrl,
    @Default([]) List<AvailableSource> sources,
  }) = AvailableExtension;

  const factory Extension.installed({
    required String pkgName,
    required String name,
    required String versionName,
    required int versionCode,
    required String lang,
    @Default(false) bool isNsfw,
    @Default(false) bool hasUpdate,
    @Default(false) bool isObsolete,
    @Default(false) bool isUnofficial,
    @Default(true) bool isShared,
    @Default([]) List<InstalledSource> sources,
  }) = InstalledExtension;

  const factory Extension.untrusted({
    required String pkgName,
    required String name,
    required String versionName,
    required int versionCode,
    required String lang,
    @Default(false) bool isNsfw,
    required String signatureHash,
    @Default([]) List<InstalledSource> sources,
  }) = UntrustedExtension;

  factory Extension.fromJson(Map<String, dynamic> json) =>
      _$ExtensionFromJson(json);
}

@freezed
abstract class AvailableSource with _$AvailableSource {
  const factory AvailableSource({
    required int id,
    required String name,
    required String baseUrl,
  }) = _AvailableSource;

  factory AvailableSource.fromJson(Map<String, dynamic> json) =>
      _$AvailableSourceFromJson(json);
}

@freezed
abstract class InstalledSource with _$InstalledSource {
  const factory InstalledSource({
    required int id,
    required String name,
    required String baseUrl,
  }) = _InstalledSource;

  factory InstalledSource.fromJson(Map<String, dynamic> json) =>
      _$InstalledSourceFromJson(json);
}
