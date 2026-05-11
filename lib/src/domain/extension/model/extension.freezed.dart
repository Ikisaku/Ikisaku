// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Extension _$ExtensionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'available':
          return AvailableExtension.fromJson(
            json
          );
                case 'installed':
          return InstalledExtension.fromJson(
            json
          );
                case 'untrusted':
          return UntrustedExtension.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Extension',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Extension {

 String get pkgName; String get name; String get versionName; int get versionCode; String get lang; bool get isNsfw; List<Object> get sources;
/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionCopyWith<Extension> get copyWith => _$ExtensionCopyWithImpl<Extension>(this as Extension, _$identity);

  /// Serializes this Extension to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extension&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.name, name) || other.name == name)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw)&&const DeepCollectionEquality().equals(other.sources, sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pkgName,name,versionName,versionCode,lang,isNsfw,const DeepCollectionEquality().hash(sources));

@override
String toString() {
  return 'Extension(pkgName: $pkgName, name: $name, versionName: $versionName, versionCode: $versionCode, lang: $lang, isNsfw: $isNsfw, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $ExtensionCopyWith<$Res>  {
  factory $ExtensionCopyWith(Extension value, $Res Function(Extension) _then) = _$ExtensionCopyWithImpl;
@useResult
$Res call({
 String pkgName, String name, String versionName, int versionCode, String lang, bool isNsfw
});




}
/// @nodoc
class _$ExtensionCopyWithImpl<$Res>
    implements $ExtensionCopyWith<$Res> {
  _$ExtensionCopyWithImpl(this._self, this._then);

  final Extension _self;
  final $Res Function(Extension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pkgName = null,Object? name = null,Object? versionName = null,Object? versionCode = null,Object? lang = null,Object? isNsfw = null,}) {
  return _then(_self.copyWith(
pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,isNsfw: null == isNsfw ? _self.isNsfw : isNsfw // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Extension].
extension ExtensionPatterns on Extension {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AvailableExtension value)?  available,TResult Function( InstalledExtension value)?  installed,TResult Function( UntrustedExtension value)?  untrusted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AvailableExtension() when available != null:
return available(_that);case InstalledExtension() when installed != null:
return installed(_that);case UntrustedExtension() when untrusted != null:
return untrusted(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AvailableExtension value)  available,required TResult Function( InstalledExtension value)  installed,required TResult Function( UntrustedExtension value)  untrusted,}){
final _that = this;
switch (_that) {
case AvailableExtension():
return available(_that);case InstalledExtension():
return installed(_that);case UntrustedExtension():
return untrusted(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AvailableExtension value)?  available,TResult? Function( InstalledExtension value)?  installed,TResult? Function( UntrustedExtension value)?  untrusted,}){
final _that = this;
switch (_that) {
case AvailableExtension() when available != null:
return available(_that);case InstalledExtension() when installed != null:
return installed(_that);case UntrustedExtension() when untrusted != null:
return untrusted(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String iconUrl,  List<AvailableSource> sources)?  available,TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  bool hasUpdate,  bool isObsolete,  bool isUnofficial,  bool isShared,  List<InstalledSource> sources)?  installed,TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String signatureHash,  List<InstalledSource> sources)?  untrusted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AvailableExtension() when available != null:
return available(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.iconUrl,_that.sources);case InstalledExtension() when installed != null:
return installed(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.hasUpdate,_that.isObsolete,_that.isUnofficial,_that.isShared,_that.sources);case UntrustedExtension() when untrusted != null:
return untrusted(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.signatureHash,_that.sources);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String iconUrl,  List<AvailableSource> sources)  available,required TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  bool hasUpdate,  bool isObsolete,  bool isUnofficial,  bool isShared,  List<InstalledSource> sources)  installed,required TResult Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String signatureHash,  List<InstalledSource> sources)  untrusted,}) {final _that = this;
switch (_that) {
case AvailableExtension():
return available(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.iconUrl,_that.sources);case InstalledExtension():
return installed(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.hasUpdate,_that.isObsolete,_that.isUnofficial,_that.isShared,_that.sources);case UntrustedExtension():
return untrusted(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.signatureHash,_that.sources);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String iconUrl,  List<AvailableSource> sources)?  available,TResult? Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  bool hasUpdate,  bool isObsolete,  bool isUnofficial,  bool isShared,  List<InstalledSource> sources)?  installed,TResult? Function( String pkgName,  String name,  String versionName,  int versionCode,  String lang,  bool isNsfw,  String signatureHash,  List<InstalledSource> sources)?  untrusted,}) {final _that = this;
switch (_that) {
case AvailableExtension() when available != null:
return available(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.iconUrl,_that.sources);case InstalledExtension() when installed != null:
return installed(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.hasUpdate,_that.isObsolete,_that.isUnofficial,_that.isShared,_that.sources);case UntrustedExtension() when untrusted != null:
return untrusted(_that.pkgName,_that.name,_that.versionName,_that.versionCode,_that.lang,_that.isNsfw,_that.signatureHash,_that.sources);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class AvailableExtension implements Extension {
  const AvailableExtension({required this.pkgName, required this.name, required this.versionName, required this.versionCode, required this.lang, this.isNsfw = false, required this.iconUrl, final  List<AvailableSource> sources = const [], final  String? $type}): _sources = sources,$type = $type ?? 'available';
  factory AvailableExtension.fromJson(Map<String, dynamic> json) => _$AvailableExtensionFromJson(json);

@override final  String pkgName;
@override final  String name;
@override final  String versionName;
@override final  int versionCode;
@override final  String lang;
@override@JsonKey() final  bool isNsfw;
 final  String iconUrl;
 final  List<AvailableSource> _sources;
@override@JsonKey() List<AvailableSource> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableExtensionCopyWith<AvailableExtension> get copyWith => _$AvailableExtensionCopyWithImpl<AvailableExtension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableExtensionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableExtension&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.name, name) || other.name == name)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pkgName,name,versionName,versionCode,lang,isNsfw,iconUrl,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'Extension.available(pkgName: $pkgName, name: $name, versionName: $versionName, versionCode: $versionCode, lang: $lang, isNsfw: $isNsfw, iconUrl: $iconUrl, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $AvailableExtensionCopyWith<$Res> implements $ExtensionCopyWith<$Res> {
  factory $AvailableExtensionCopyWith(AvailableExtension value, $Res Function(AvailableExtension) _then) = _$AvailableExtensionCopyWithImpl;
@override @useResult
$Res call({
 String pkgName, String name, String versionName, int versionCode, String lang, bool isNsfw, String iconUrl, List<AvailableSource> sources
});




}
/// @nodoc
class _$AvailableExtensionCopyWithImpl<$Res>
    implements $AvailableExtensionCopyWith<$Res> {
  _$AvailableExtensionCopyWithImpl(this._self, this._then);

  final AvailableExtension _self;
  final $Res Function(AvailableExtension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pkgName = null,Object? name = null,Object? versionName = null,Object? versionCode = null,Object? lang = null,Object? isNsfw = null,Object? iconUrl = null,Object? sources = null,}) {
  return _then(AvailableExtension(
pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,isNsfw: null == isNsfw ? _self.isNsfw : isNsfw // ignore: cast_nullable_to_non_nullable
as bool,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<AvailableSource>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class InstalledExtension implements Extension {
  const InstalledExtension({required this.pkgName, required this.name, required this.versionName, required this.versionCode, required this.lang, this.isNsfw = false, this.hasUpdate = false, this.isObsolete = false, this.isUnofficial = false, this.isShared = true, final  List<InstalledSource> sources = const [], final  String? $type}): _sources = sources,$type = $type ?? 'installed';
  factory InstalledExtension.fromJson(Map<String, dynamic> json) => _$InstalledExtensionFromJson(json);

@override final  String pkgName;
@override final  String name;
@override final  String versionName;
@override final  int versionCode;
@override final  String lang;
@override@JsonKey() final  bool isNsfw;
@JsonKey() final  bool hasUpdate;
@JsonKey() final  bool isObsolete;
@JsonKey() final  bool isUnofficial;
@JsonKey() final  bool isShared;
 final  List<InstalledSource> _sources;
@override@JsonKey() List<InstalledSource> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstalledExtensionCopyWith<InstalledExtension> get copyWith => _$InstalledExtensionCopyWithImpl<InstalledExtension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstalledExtensionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstalledExtension&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.name, name) || other.name == name)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw)&&(identical(other.hasUpdate, hasUpdate) || other.hasUpdate == hasUpdate)&&(identical(other.isObsolete, isObsolete) || other.isObsolete == isObsolete)&&(identical(other.isUnofficial, isUnofficial) || other.isUnofficial == isUnofficial)&&(identical(other.isShared, isShared) || other.isShared == isShared)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pkgName,name,versionName,versionCode,lang,isNsfw,hasUpdate,isObsolete,isUnofficial,isShared,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'Extension.installed(pkgName: $pkgName, name: $name, versionName: $versionName, versionCode: $versionCode, lang: $lang, isNsfw: $isNsfw, hasUpdate: $hasUpdate, isObsolete: $isObsolete, isUnofficial: $isUnofficial, isShared: $isShared, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $InstalledExtensionCopyWith<$Res> implements $ExtensionCopyWith<$Res> {
  factory $InstalledExtensionCopyWith(InstalledExtension value, $Res Function(InstalledExtension) _then) = _$InstalledExtensionCopyWithImpl;
@override @useResult
$Res call({
 String pkgName, String name, String versionName, int versionCode, String lang, bool isNsfw, bool hasUpdate, bool isObsolete, bool isUnofficial, bool isShared, List<InstalledSource> sources
});




}
/// @nodoc
class _$InstalledExtensionCopyWithImpl<$Res>
    implements $InstalledExtensionCopyWith<$Res> {
  _$InstalledExtensionCopyWithImpl(this._self, this._then);

  final InstalledExtension _self;
  final $Res Function(InstalledExtension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pkgName = null,Object? name = null,Object? versionName = null,Object? versionCode = null,Object? lang = null,Object? isNsfw = null,Object? hasUpdate = null,Object? isObsolete = null,Object? isUnofficial = null,Object? isShared = null,Object? sources = null,}) {
  return _then(InstalledExtension(
pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,isNsfw: null == isNsfw ? _self.isNsfw : isNsfw // ignore: cast_nullable_to_non_nullable
as bool,hasUpdate: null == hasUpdate ? _self.hasUpdate : hasUpdate // ignore: cast_nullable_to_non_nullable
as bool,isObsolete: null == isObsolete ? _self.isObsolete : isObsolete // ignore: cast_nullable_to_non_nullable
as bool,isUnofficial: null == isUnofficial ? _self.isUnofficial : isUnofficial // ignore: cast_nullable_to_non_nullable
as bool,isShared: null == isShared ? _self.isShared : isShared // ignore: cast_nullable_to_non_nullable
as bool,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<InstalledSource>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UntrustedExtension implements Extension {
  const UntrustedExtension({required this.pkgName, required this.name, required this.versionName, required this.versionCode, required this.lang, this.isNsfw = false, required this.signatureHash, final  List<InstalledSource> sources = const [], final  String? $type}): _sources = sources,$type = $type ?? 'untrusted';
  factory UntrustedExtension.fromJson(Map<String, dynamic> json) => _$UntrustedExtensionFromJson(json);

@override final  String pkgName;
@override final  String name;
@override final  String versionName;
@override final  int versionCode;
@override final  String lang;
@override@JsonKey() final  bool isNsfw;
 final  String signatureHash;
 final  List<InstalledSource> _sources;
@override@JsonKey() List<InstalledSource> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UntrustedExtensionCopyWith<UntrustedExtension> get copyWith => _$UntrustedExtensionCopyWithImpl<UntrustedExtension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UntrustedExtensionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UntrustedExtension&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.name, name) || other.name == name)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw)&&(identical(other.signatureHash, signatureHash) || other.signatureHash == signatureHash)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pkgName,name,versionName,versionCode,lang,isNsfw,signatureHash,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'Extension.untrusted(pkgName: $pkgName, name: $name, versionName: $versionName, versionCode: $versionCode, lang: $lang, isNsfw: $isNsfw, signatureHash: $signatureHash, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $UntrustedExtensionCopyWith<$Res> implements $ExtensionCopyWith<$Res> {
  factory $UntrustedExtensionCopyWith(UntrustedExtension value, $Res Function(UntrustedExtension) _then) = _$UntrustedExtensionCopyWithImpl;
@override @useResult
$Res call({
 String pkgName, String name, String versionName, int versionCode, String lang, bool isNsfw, String signatureHash, List<InstalledSource> sources
});




}
/// @nodoc
class _$UntrustedExtensionCopyWithImpl<$Res>
    implements $UntrustedExtensionCopyWith<$Res> {
  _$UntrustedExtensionCopyWithImpl(this._self, this._then);

  final UntrustedExtension _self;
  final $Res Function(UntrustedExtension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pkgName = null,Object? name = null,Object? versionName = null,Object? versionCode = null,Object? lang = null,Object? isNsfw = null,Object? signatureHash = null,Object? sources = null,}) {
  return _then(UntrustedExtension(
pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,isNsfw: null == isNsfw ? _self.isNsfw : isNsfw // ignore: cast_nullable_to_non_nullable
as bool,signatureHash: null == signatureHash ? _self.signatureHash : signatureHash // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<InstalledSource>,
  ));
}


}


/// @nodoc
mixin _$AvailableSource {

 int get id; String get name; String get baseUrl;
/// Create a copy of AvailableSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableSourceCopyWith<AvailableSource> get copyWith => _$AvailableSourceCopyWithImpl<AvailableSource>(this as AvailableSource, _$identity);

  /// Serializes this AvailableSource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,baseUrl);

@override
String toString() {
  return 'AvailableSource(id: $id, name: $name, baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class $AvailableSourceCopyWith<$Res>  {
  factory $AvailableSourceCopyWith(AvailableSource value, $Res Function(AvailableSource) _then) = _$AvailableSourceCopyWithImpl;
@useResult
$Res call({
 int id, String name, String baseUrl
});




}
/// @nodoc
class _$AvailableSourceCopyWithImpl<$Res>
    implements $AvailableSourceCopyWith<$Res> {
  _$AvailableSourceCopyWithImpl(this._self, this._then);

  final AvailableSource _self;
  final $Res Function(AvailableSource) _then;

/// Create a copy of AvailableSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? baseUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableSource].
extension AvailableSourcePatterns on AvailableSource {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableSource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableSource() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableSource value)  $default,){
final _that = this;
switch (_that) {
case _AvailableSource():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableSource value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableSource() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String baseUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableSource() when $default != null:
return $default(_that.id,_that.name,_that.baseUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String baseUrl)  $default,) {final _that = this;
switch (_that) {
case _AvailableSource():
return $default(_that.id,_that.name,_that.baseUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String baseUrl)?  $default,) {final _that = this;
switch (_that) {
case _AvailableSource() when $default != null:
return $default(_that.id,_that.name,_that.baseUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableSource implements AvailableSource {
  const _AvailableSource({required this.id, required this.name, required this.baseUrl});
  factory _AvailableSource.fromJson(Map<String, dynamic> json) => _$AvailableSourceFromJson(json);

@override final  int id;
@override final  String name;
@override final  String baseUrl;

/// Create a copy of AvailableSource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableSourceCopyWith<_AvailableSource> get copyWith => __$AvailableSourceCopyWithImpl<_AvailableSource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableSourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,baseUrl);

@override
String toString() {
  return 'AvailableSource(id: $id, name: $name, baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class _$AvailableSourceCopyWith<$Res> implements $AvailableSourceCopyWith<$Res> {
  factory _$AvailableSourceCopyWith(_AvailableSource value, $Res Function(_AvailableSource) _then) = __$AvailableSourceCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String baseUrl
});




}
/// @nodoc
class __$AvailableSourceCopyWithImpl<$Res>
    implements _$AvailableSourceCopyWith<$Res> {
  __$AvailableSourceCopyWithImpl(this._self, this._then);

  final _AvailableSource _self;
  final $Res Function(_AvailableSource) _then;

/// Create a copy of AvailableSource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? baseUrl = null,}) {
  return _then(_AvailableSource(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InstalledSource {

 int get id; String get name; String get baseUrl;
/// Create a copy of InstalledSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstalledSourceCopyWith<InstalledSource> get copyWith => _$InstalledSourceCopyWithImpl<InstalledSource>(this as InstalledSource, _$identity);

  /// Serializes this InstalledSource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstalledSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,baseUrl);

@override
String toString() {
  return 'InstalledSource(id: $id, name: $name, baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class $InstalledSourceCopyWith<$Res>  {
  factory $InstalledSourceCopyWith(InstalledSource value, $Res Function(InstalledSource) _then) = _$InstalledSourceCopyWithImpl;
@useResult
$Res call({
 int id, String name, String baseUrl
});




}
/// @nodoc
class _$InstalledSourceCopyWithImpl<$Res>
    implements $InstalledSourceCopyWith<$Res> {
  _$InstalledSourceCopyWithImpl(this._self, this._then);

  final InstalledSource _self;
  final $Res Function(InstalledSource) _then;

/// Create a copy of InstalledSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? baseUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InstalledSource].
extension InstalledSourcePatterns on InstalledSource {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstalledSource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstalledSource() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstalledSource value)  $default,){
final _that = this;
switch (_that) {
case _InstalledSource():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstalledSource value)?  $default,){
final _that = this;
switch (_that) {
case _InstalledSource() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String baseUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstalledSource() when $default != null:
return $default(_that.id,_that.name,_that.baseUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String baseUrl)  $default,) {final _that = this;
switch (_that) {
case _InstalledSource():
return $default(_that.id,_that.name,_that.baseUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String baseUrl)?  $default,) {final _that = this;
switch (_that) {
case _InstalledSource() when $default != null:
return $default(_that.id,_that.name,_that.baseUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstalledSource implements InstalledSource {
  const _InstalledSource({required this.id, required this.name, required this.baseUrl});
  factory _InstalledSource.fromJson(Map<String, dynamic> json) => _$InstalledSourceFromJson(json);

@override final  int id;
@override final  String name;
@override final  String baseUrl;

/// Create a copy of InstalledSource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstalledSourceCopyWith<_InstalledSource> get copyWith => __$InstalledSourceCopyWithImpl<_InstalledSource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstalledSourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstalledSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,baseUrl);

@override
String toString() {
  return 'InstalledSource(id: $id, name: $name, baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class _$InstalledSourceCopyWith<$Res> implements $InstalledSourceCopyWith<$Res> {
  factory _$InstalledSourceCopyWith(_InstalledSource value, $Res Function(_InstalledSource) _then) = __$InstalledSourceCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String baseUrl
});




}
/// @nodoc
class __$InstalledSourceCopyWithImpl<$Res>
    implements _$InstalledSourceCopyWith<$Res> {
  __$InstalledSourceCopyWithImpl(this._self, this._then);

  final _InstalledSource _self;
  final $Res Function(_InstalledSource) _then;

/// Create a copy of InstalledSource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? baseUrl = null,}) {
  return _then(_InstalledSource(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
