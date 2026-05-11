// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Source {

 int get id; String get name; String get lang; Pin get pin; bool get isUsedLast; bool get isEnabled; bool get isStub; bool get supportsLatest;
/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceCopyWith<Source> get copyWith => _$SourceCopyWithImpl<Source>(this as Source, _$identity);

  /// Serializes this Source to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Source&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.isUsedLast, isUsedLast) || other.isUsedLast == isUsedLast)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.isStub, isStub) || other.isStub == isStub)&&(identical(other.supportsLatest, supportsLatest) || other.supportsLatest == supportsLatest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,lang,pin,isUsedLast,isEnabled,isStub,supportsLatest);

@override
String toString() {
  return 'Source(id: $id, name: $name, lang: $lang, pin: $pin, isUsedLast: $isUsedLast, isEnabled: $isEnabled, isStub: $isStub, supportsLatest: $supportsLatest)';
}


}

/// @nodoc
abstract mixin class $SourceCopyWith<$Res>  {
  factory $SourceCopyWith(Source value, $Res Function(Source) _then) = _$SourceCopyWithImpl;
@useResult
$Res call({
 int id, String name, String lang, Pin pin, bool isUsedLast, bool isEnabled, bool isStub, bool supportsLatest
});




}
/// @nodoc
class _$SourceCopyWithImpl<$Res>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._self, this._then);

  final Source _self;
  final $Res Function(Source) _then;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? lang = null,Object? pin = null,Object? isUsedLast = null,Object? isEnabled = null,Object? isStub = null,Object? supportsLatest = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin,isUsedLast: null == isUsedLast ? _self.isUsedLast : isUsedLast // ignore: cast_nullable_to_non_nullable
as bool,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,isStub: null == isStub ? _self.isStub : isStub // ignore: cast_nullable_to_non_nullable
as bool,supportsLatest: null == supportsLatest ? _self.supportsLatest : supportsLatest // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Source].
extension SourcePatterns on Source {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Source value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Source() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Source value)  $default,){
final _that = this;
switch (_that) {
case _Source():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Source value)?  $default,){
final _that = this;
switch (_that) {
case _Source() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String lang,  Pin pin,  bool isUsedLast,  bool isEnabled,  bool isStub,  bool supportsLatest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Source() when $default != null:
return $default(_that.id,_that.name,_that.lang,_that.pin,_that.isUsedLast,_that.isEnabled,_that.isStub,_that.supportsLatest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String lang,  Pin pin,  bool isUsedLast,  bool isEnabled,  bool isStub,  bool supportsLatest)  $default,) {final _that = this;
switch (_that) {
case _Source():
return $default(_that.id,_that.name,_that.lang,_that.pin,_that.isUsedLast,_that.isEnabled,_that.isStub,_that.supportsLatest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String lang,  Pin pin,  bool isUsedLast,  bool isEnabled,  bool isStub,  bool supportsLatest)?  $default,) {final _that = this;
switch (_that) {
case _Source() when $default != null:
return $default(_that.id,_that.name,_that.lang,_that.pin,_that.isUsedLast,_that.isEnabled,_that.isStub,_that.supportsLatest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Source extends Source {
  const _Source({required this.id, required this.name, required this.lang, this.pin = Pin.unpinned, this.isUsedLast = false, this.isEnabled = true, this.isStub = false, this.supportsLatest = false}): super._();
  factory _Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

@override final  int id;
@override final  String name;
@override final  String lang;
@override@JsonKey() final  Pin pin;
@override@JsonKey() final  bool isUsedLast;
@override@JsonKey() final  bool isEnabled;
@override@JsonKey() final  bool isStub;
@override@JsonKey() final  bool supportsLatest;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceCopyWith<_Source> get copyWith => __$SourceCopyWithImpl<_Source>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Source&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.isUsedLast, isUsedLast) || other.isUsedLast == isUsedLast)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.isStub, isStub) || other.isStub == isStub)&&(identical(other.supportsLatest, supportsLatest) || other.supportsLatest == supportsLatest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,lang,pin,isUsedLast,isEnabled,isStub,supportsLatest);

@override
String toString() {
  return 'Source(id: $id, name: $name, lang: $lang, pin: $pin, isUsedLast: $isUsedLast, isEnabled: $isEnabled, isStub: $isStub, supportsLatest: $supportsLatest)';
}


}

/// @nodoc
abstract mixin class _$SourceCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$SourceCopyWith(_Source value, $Res Function(_Source) _then) = __$SourceCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String lang, Pin pin, bool isUsedLast, bool isEnabled, bool isStub, bool supportsLatest
});




}
/// @nodoc
class __$SourceCopyWithImpl<$Res>
    implements _$SourceCopyWith<$Res> {
  __$SourceCopyWithImpl(this._self, this._then);

  final _Source _self;
  final $Res Function(_Source) _then;

/// Create a copy of Source
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? lang = null,Object? pin = null,Object? isUsedLast = null,Object? isEnabled = null,Object? isStub = null,Object? supportsLatest = null,}) {
  return _then(_Source(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin,isUsedLast: null == isUsedLast ? _self.isUsedLast : isUsedLast // ignore: cast_nullable_to_non_nullable
as bool,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,isStub: null == isStub ? _self.isStub : isStub // ignore: cast_nullable_to_non_nullable
as bool,supportsLatest: null == supportsLatest ? _self.supportsLatest : supportsLatest // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
