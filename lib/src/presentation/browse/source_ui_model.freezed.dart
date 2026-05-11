// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SourceUiModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceUiModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SourceUiModel()';
}


}

/// @nodoc
class $SourceUiModelCopyWith<$Res>  {
$SourceUiModelCopyWith(SourceUiModel _, $Res Function(SourceUiModel) __);
}


/// Adds pattern-matching-related methods to [SourceUiModel].
extension SourceUiModelPatterns on SourceUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SourceHeader value)?  header,TResult Function( SourceItem value)?  item,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SourceHeader() when header != null:
return header(_that);case SourceItem() when item != null:
return item(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SourceHeader value)  header,required TResult Function( SourceItem value)  item,}){
final _that = this;
switch (_that) {
case SourceHeader():
return header(_that);case SourceItem():
return item(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SourceHeader value)?  header,TResult? Function( SourceItem value)?  item,}){
final _that = this;
switch (_that) {
case SourceHeader() when header != null:
return header(_that);case SourceItem() when item != null:
return item(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String language)?  header,TResult Function( Source source)?  item,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SourceHeader() when header != null:
return header(_that.language);case SourceItem() when item != null:
return item(_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String language)  header,required TResult Function( Source source)  item,}) {final _that = this;
switch (_that) {
case SourceHeader():
return header(_that.language);case SourceItem():
return item(_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String language)?  header,TResult? Function( Source source)?  item,}) {final _that = this;
switch (_that) {
case SourceHeader() when header != null:
return header(_that.language);case SourceItem() when item != null:
return item(_that.source);case _:
  return null;

}
}

}

/// @nodoc


class SourceHeader implements SourceUiModel {
  const SourceHeader({required this.language});
  

 final  String language;

/// Create a copy of SourceUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceHeaderCopyWith<SourceHeader> get copyWith => _$SourceHeaderCopyWithImpl<SourceHeader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceHeader&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'SourceUiModel.header(language: $language)';
}


}

/// @nodoc
abstract mixin class $SourceHeaderCopyWith<$Res> implements $SourceUiModelCopyWith<$Res> {
  factory $SourceHeaderCopyWith(SourceHeader value, $Res Function(SourceHeader) _then) = _$SourceHeaderCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class _$SourceHeaderCopyWithImpl<$Res>
    implements $SourceHeaderCopyWith<$Res> {
  _$SourceHeaderCopyWithImpl(this._self, this._then);

  final SourceHeader _self;
  final $Res Function(SourceHeader) _then;

/// Create a copy of SourceUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(SourceHeader(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SourceItem implements SourceUiModel {
  const SourceItem({required this.source});
  

 final  Source source;

/// Create a copy of SourceUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceItemCopyWith<SourceItem> get copyWith => _$SourceItemCopyWithImpl<SourceItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceItem&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'SourceUiModel.item(source: $source)';
}


}

/// @nodoc
abstract mixin class $SourceItemCopyWith<$Res> implements $SourceUiModelCopyWith<$Res> {
  factory $SourceItemCopyWith(SourceItem value, $Res Function(SourceItem) _then) = _$SourceItemCopyWithImpl;
@useResult
$Res call({
 Source source
});


$SourceCopyWith<$Res> get source;

}
/// @nodoc
class _$SourceItemCopyWithImpl<$Res>
    implements $SourceItemCopyWith<$Res> {
  _$SourceItemCopyWithImpl(this._self, this._then);

  final SourceItem _self;
  final $Res Function(SourceItem) _then;

/// Create a copy of SourceUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? source = null,}) {
  return _then(SourceItem(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Source,
  ));
}

/// Create a copy of SourceUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceCopyWith<$Res> get source {
  
  return $SourceCopyWith<$Res>(_self.source, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}

// dart format on
