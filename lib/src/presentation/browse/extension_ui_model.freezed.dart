// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtensionUiModel {

 Extension get extension; InstallStep get installStep;
/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionUiModelCopyWith<ExtensionUiModel> get copyWith => _$ExtensionUiModelCopyWithImpl<ExtensionUiModel>(this as ExtensionUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionUiModel&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.installStep, installStep) || other.installStep == installStep));
}


@override
int get hashCode => Object.hash(runtimeType,extension,installStep);

@override
String toString() {
  return 'ExtensionUiModel(extension: $extension, installStep: $installStep)';
}


}

/// @nodoc
abstract mixin class $ExtensionUiModelCopyWith<$Res>  {
  factory $ExtensionUiModelCopyWith(ExtensionUiModel value, $Res Function(ExtensionUiModel) _then) = _$ExtensionUiModelCopyWithImpl;
@useResult
$Res call({
 Extension extension, InstallStep installStep
});


$ExtensionCopyWith<$Res> get extension;

}
/// @nodoc
class _$ExtensionUiModelCopyWithImpl<$Res>
    implements $ExtensionUiModelCopyWith<$Res> {
  _$ExtensionUiModelCopyWithImpl(this._self, this._then);

  final ExtensionUiModel _self;
  final $Res Function(ExtensionUiModel) _then;

/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extension = null,Object? installStep = null,}) {
  return _then(_self.copyWith(
extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as Extension,installStep: null == installStep ? _self.installStep : installStep // ignore: cast_nullable_to_non_nullable
as InstallStep,
  ));
}
/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtensionCopyWith<$Res> get extension {
  
  return $ExtensionCopyWith<$Res>(_self.extension, (value) {
    return _then(_self.copyWith(extension: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExtensionUiModel].
extension ExtensionUiModelPatterns on ExtensionUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExtensionItemModel value)?  item,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExtensionItemModel() when item != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExtensionItemModel value)  item,}){
final _that = this;
switch (_that) {
case ExtensionItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExtensionItemModel value)?  item,}){
final _that = this;
switch (_that) {
case ExtensionItemModel() when item != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Extension extension,  InstallStep installStep)?  item,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExtensionItemModel() when item != null:
return item(_that.extension,_that.installStep);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Extension extension,  InstallStep installStep)  item,}) {final _that = this;
switch (_that) {
case ExtensionItemModel():
return item(_that.extension,_that.installStep);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Extension extension,  InstallStep installStep)?  item,}) {final _that = this;
switch (_that) {
case ExtensionItemModel() when item != null:
return item(_that.extension,_that.installStep);case _:
  return null;

}
}

}

/// @nodoc


class ExtensionItemModel implements ExtensionUiModel {
  const ExtensionItemModel({required this.extension, this.installStep = InstallStep.idle});
  

@override final  Extension extension;
@override@JsonKey() final  InstallStep installStep;

/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionItemModelCopyWith<ExtensionItemModel> get copyWith => _$ExtensionItemModelCopyWithImpl<ExtensionItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionItemModel&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.installStep, installStep) || other.installStep == installStep));
}


@override
int get hashCode => Object.hash(runtimeType,extension,installStep);

@override
String toString() {
  return 'ExtensionUiModel.item(extension: $extension, installStep: $installStep)';
}


}

/// @nodoc
abstract mixin class $ExtensionItemModelCopyWith<$Res> implements $ExtensionUiModelCopyWith<$Res> {
  factory $ExtensionItemModelCopyWith(ExtensionItemModel value, $Res Function(ExtensionItemModel) _then) = _$ExtensionItemModelCopyWithImpl;
@override @useResult
$Res call({
 Extension extension, InstallStep installStep
});


@override $ExtensionCopyWith<$Res> get extension;

}
/// @nodoc
class _$ExtensionItemModelCopyWithImpl<$Res>
    implements $ExtensionItemModelCopyWith<$Res> {
  _$ExtensionItemModelCopyWithImpl(this._self, this._then);

  final ExtensionItemModel _self;
  final $Res Function(ExtensionItemModel) _then;

/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extension = null,Object? installStep = null,}) {
  return _then(ExtensionItemModel(
extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as Extension,installStep: null == installStep ? _self.installStep : installStep // ignore: cast_nullable_to_non_nullable
as InstallStep,
  ));
}

/// Create a copy of ExtensionUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtensionCopyWith<$Res> get extension {
  
  return $ExtensionCopyWith<$Res>(_self.extension, (value) {
    return _then(_self.copyWith(extension: value));
  });
}
}

/// @nodoc
mixin _$ExtensionHeader {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionHeader);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtensionHeader()';
}


}

/// @nodoc
class $ExtensionHeaderCopyWith<$Res>  {
$ExtensionHeaderCopyWith(ExtensionHeader _, $Res Function(ExtensionHeader) __);
}


/// Adds pattern-matching-related methods to [ExtensionHeader].
extension ExtensionHeaderPatterns on ExtensionHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExtensionHeaderResource value)?  resource,TResult Function( ExtensionHeaderText value)?  text,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExtensionHeaderResource() when resource != null:
return resource(_that);case ExtensionHeaderText() when text != null:
return text(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExtensionHeaderResource value)  resource,required TResult Function( ExtensionHeaderText value)  text,}){
final _that = this;
switch (_that) {
case ExtensionHeaderResource():
return resource(_that);case ExtensionHeaderText():
return text(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExtensionHeaderResource value)?  resource,TResult? Function( ExtensionHeaderText value)?  text,}){
final _that = this;
switch (_that) {
case ExtensionHeaderResource() when resource != null:
return resource(_that);case ExtensionHeaderText() when text != null:
return text(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String textRes)?  resource,TResult Function( String text)?  text,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExtensionHeaderResource() when resource != null:
return resource(_that.textRes);case ExtensionHeaderText() when text != null:
return text(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String textRes)  resource,required TResult Function( String text)  text,}) {final _that = this;
switch (_that) {
case ExtensionHeaderResource():
return resource(_that.textRes);case ExtensionHeaderText():
return text(_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String textRes)?  resource,TResult? Function( String text)?  text,}) {final _that = this;
switch (_that) {
case ExtensionHeaderResource() when resource != null:
return resource(_that.textRes);case ExtensionHeaderText() when text != null:
return text(_that.text);case _:
  return null;

}
}

}

/// @nodoc


class ExtensionHeaderResource implements ExtensionHeader {
  const ExtensionHeaderResource({required this.textRes});
  

 final  String textRes;

/// Create a copy of ExtensionHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionHeaderResourceCopyWith<ExtensionHeaderResource> get copyWith => _$ExtensionHeaderResourceCopyWithImpl<ExtensionHeaderResource>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionHeaderResource&&(identical(other.textRes, textRes) || other.textRes == textRes));
}


@override
int get hashCode => Object.hash(runtimeType,textRes);

@override
String toString() {
  return 'ExtensionHeader.resource(textRes: $textRes)';
}


}

/// @nodoc
abstract mixin class $ExtensionHeaderResourceCopyWith<$Res> implements $ExtensionHeaderCopyWith<$Res> {
  factory $ExtensionHeaderResourceCopyWith(ExtensionHeaderResource value, $Res Function(ExtensionHeaderResource) _then) = _$ExtensionHeaderResourceCopyWithImpl;
@useResult
$Res call({
 String textRes
});




}
/// @nodoc
class _$ExtensionHeaderResourceCopyWithImpl<$Res>
    implements $ExtensionHeaderResourceCopyWith<$Res> {
  _$ExtensionHeaderResourceCopyWithImpl(this._self, this._then);

  final ExtensionHeaderResource _self;
  final $Res Function(ExtensionHeaderResource) _then;

/// Create a copy of ExtensionHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? textRes = null,}) {
  return _then(ExtensionHeaderResource(
textRes: null == textRes ? _self.textRes : textRes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExtensionHeaderText implements ExtensionHeader {
  const ExtensionHeaderText({required this.text});
  

 final  String text;

/// Create a copy of ExtensionHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionHeaderTextCopyWith<ExtensionHeaderText> get copyWith => _$ExtensionHeaderTextCopyWithImpl<ExtensionHeaderText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionHeaderText&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ExtensionHeader.text(text: $text)';
}


}

/// @nodoc
abstract mixin class $ExtensionHeaderTextCopyWith<$Res> implements $ExtensionHeaderCopyWith<$Res> {
  factory $ExtensionHeaderTextCopyWith(ExtensionHeaderText value, $Res Function(ExtensionHeaderText) _then) = _$ExtensionHeaderTextCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ExtensionHeaderTextCopyWithImpl<$Res>
    implements $ExtensionHeaderTextCopyWith<$Res> {
  _$ExtensionHeaderTextCopyWithImpl(this._self, this._then);

  final ExtensionHeaderText _self;
  final $Res Function(ExtensionHeaderText) _then;

/// Create a copy of ExtensionHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(ExtensionHeaderText(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
