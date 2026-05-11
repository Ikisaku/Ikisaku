// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SourcesState {

 bool get isLoading; List<SourceUiModel> get items; SourceDialog? get dialog;
/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourcesStateCopyWith<SourcesState> get copyWith => _$SourcesStateCopyWithImpl<SourcesState>(this as SourcesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourcesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.dialog, dialog) || other.dialog == dialog));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(items),dialog);

@override
String toString() {
  return 'SourcesState(isLoading: $isLoading, items: $items, dialog: $dialog)';
}


}

/// @nodoc
abstract mixin class $SourcesStateCopyWith<$Res>  {
  factory $SourcesStateCopyWith(SourcesState value, $Res Function(SourcesState) _then) = _$SourcesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<SourceUiModel> items, SourceDialog? dialog
});


$SourceDialogCopyWith<$Res>? get dialog;

}
/// @nodoc
class _$SourcesStateCopyWithImpl<$Res>
    implements $SourcesStateCopyWith<$Res> {
  _$SourcesStateCopyWithImpl(this._self, this._then);

  final SourcesState _self;
  final $Res Function(SourcesState) _then;

/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? items = null,Object? dialog = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SourceUiModel>,dialog: freezed == dialog ? _self.dialog : dialog // ignore: cast_nullable_to_non_nullable
as SourceDialog?,
  ));
}
/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDialogCopyWith<$Res>? get dialog {
    if (_self.dialog == null) {
    return null;
  }

  return $SourceDialogCopyWith<$Res>(_self.dialog!, (value) {
    return _then(_self.copyWith(dialog: value));
  });
}
}


/// Adds pattern-matching-related methods to [SourcesState].
extension SourcesStatePatterns on SourcesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourcesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourcesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourcesState value)  $default,){
final _that = this;
switch (_that) {
case _SourcesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourcesState value)?  $default,){
final _that = this;
switch (_that) {
case _SourcesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<SourceUiModel> items,  SourceDialog? dialog)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourcesState() when $default != null:
return $default(_that.isLoading,_that.items,_that.dialog);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<SourceUiModel> items,  SourceDialog? dialog)  $default,) {final _that = this;
switch (_that) {
case _SourcesState():
return $default(_that.isLoading,_that.items,_that.dialog);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<SourceUiModel> items,  SourceDialog? dialog)?  $default,) {final _that = this;
switch (_that) {
case _SourcesState() when $default != null:
return $default(_that.isLoading,_that.items,_that.dialog);case _:
  return null;

}
}

}

/// @nodoc


class _SourcesState extends SourcesState {
  const _SourcesState({this.isLoading = true, final  List<SourceUiModel> items = const [], this.dialog}): _items = items,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<SourceUiModel> _items;
@override@JsonKey() List<SourceUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  SourceDialog? dialog;

/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourcesStateCopyWith<_SourcesState> get copyWith => __$SourcesStateCopyWithImpl<_SourcesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourcesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.dialog, dialog) || other.dialog == dialog));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_items),dialog);

@override
String toString() {
  return 'SourcesState(isLoading: $isLoading, items: $items, dialog: $dialog)';
}


}

/// @nodoc
abstract mixin class _$SourcesStateCopyWith<$Res> implements $SourcesStateCopyWith<$Res> {
  factory _$SourcesStateCopyWith(_SourcesState value, $Res Function(_SourcesState) _then) = __$SourcesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<SourceUiModel> items, SourceDialog? dialog
});


@override $SourceDialogCopyWith<$Res>? get dialog;

}
/// @nodoc
class __$SourcesStateCopyWithImpl<$Res>
    implements _$SourcesStateCopyWith<$Res> {
  __$SourcesStateCopyWithImpl(this._self, this._then);

  final _SourcesState _self;
  final $Res Function(_SourcesState) _then;

/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? items = null,Object? dialog = freezed,}) {
  return _then(_SourcesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SourceUiModel>,dialog: freezed == dialog ? _self.dialog : dialog // ignore: cast_nullable_to_non_nullable
as SourceDialog?,
  ));
}

/// Create a copy of SourcesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDialogCopyWith<$Res>? get dialog {
    if (_self.dialog == null) {
    return null;
  }

  return $SourceDialogCopyWith<$Res>(_self.dialog!, (value) {
    return _then(_self.copyWith(dialog: value));
  });
}
}

/// @nodoc
mixin _$SourceDialog {

 Source get source;
/// Create a copy of SourceDialog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceDialogCopyWith<SourceDialog> get copyWith => _$SourceDialogCopyWithImpl<SourceDialog>(this as SourceDialog, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceDialog&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'SourceDialog(source: $source)';
}


}

/// @nodoc
abstract mixin class $SourceDialogCopyWith<$Res>  {
  factory $SourceDialogCopyWith(SourceDialog value, $Res Function(SourceDialog) _then) = _$SourceDialogCopyWithImpl;
@useResult
$Res call({
 Source source
});


$SourceCopyWith<$Res> get source;

}
/// @nodoc
class _$SourceDialogCopyWithImpl<$Res>
    implements $SourceDialogCopyWith<$Res> {
  _$SourceDialogCopyWithImpl(this._self, this._then);

  final SourceDialog _self;
  final $Res Function(SourceDialog) _then;

/// Create a copy of SourceDialog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Source,
  ));
}
/// Create a copy of SourceDialog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceCopyWith<$Res> get source {
  
  return $SourceCopyWith<$Res>(_self.source, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [SourceDialog].
extension SourceDialogPatterns on SourceDialog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceDialog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceDialog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceDialog value)  $default,){
final _that = this;
switch (_that) {
case _SourceDialog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceDialog value)?  $default,){
final _that = this;
switch (_that) {
case _SourceDialog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Source source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceDialog() when $default != null:
return $default(_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Source source)  $default,) {final _that = this;
switch (_that) {
case _SourceDialog():
return $default(_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Source source)?  $default,) {final _that = this;
switch (_that) {
case _SourceDialog() when $default != null:
return $default(_that.source);case _:
  return null;

}
}

}

/// @nodoc


class _SourceDialog implements SourceDialog {
  const _SourceDialog({required this.source});
  

@override final  Source source;

/// Create a copy of SourceDialog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceDialogCopyWith<_SourceDialog> get copyWith => __$SourceDialogCopyWithImpl<_SourceDialog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceDialog&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'SourceDialog(source: $source)';
}


}

/// @nodoc
abstract mixin class _$SourceDialogCopyWith<$Res> implements $SourceDialogCopyWith<$Res> {
  factory _$SourceDialogCopyWith(_SourceDialog value, $Res Function(_SourceDialog) _then) = __$SourceDialogCopyWithImpl;
@override @useResult
$Res call({
 Source source
});


@override $SourceCopyWith<$Res> get source;

}
/// @nodoc
class __$SourceDialogCopyWithImpl<$Res>
    implements _$SourceDialogCopyWith<$Res> {
  __$SourceDialogCopyWithImpl(this._self, this._then);

  final _SourceDialog _self;
  final $Res Function(_SourceDialog) _then;

/// Create a copy of SourceDialog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,}) {
  return _then(_SourceDialog(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Source,
  ));
}

/// Create a copy of SourceDialog
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
