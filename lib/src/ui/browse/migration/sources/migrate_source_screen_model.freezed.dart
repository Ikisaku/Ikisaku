// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'migrate_source_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MigrateSourceState {

 bool get isLoading; List<SourceWithCount> get items; MigrateSortingMode get sortingMode; MigrateSortingDirection get sortingDirection;
/// Create a copy of MigrateSourceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MigrateSourceStateCopyWith<MigrateSourceState> get copyWith => _$MigrateSourceStateCopyWithImpl<MigrateSourceState>(this as MigrateSourceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MigrateSourceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.sortingMode, sortingMode) || other.sortingMode == sortingMode)&&(identical(other.sortingDirection, sortingDirection) || other.sortingDirection == sortingDirection));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(items),sortingMode,sortingDirection);

@override
String toString() {
  return 'MigrateSourceState(isLoading: $isLoading, items: $items, sortingMode: $sortingMode, sortingDirection: $sortingDirection)';
}


}

/// @nodoc
abstract mixin class $MigrateSourceStateCopyWith<$Res>  {
  factory $MigrateSourceStateCopyWith(MigrateSourceState value, $Res Function(MigrateSourceState) _then) = _$MigrateSourceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<SourceWithCount> items, MigrateSortingMode sortingMode, MigrateSortingDirection sortingDirection
});




}
/// @nodoc
class _$MigrateSourceStateCopyWithImpl<$Res>
    implements $MigrateSourceStateCopyWith<$Res> {
  _$MigrateSourceStateCopyWithImpl(this._self, this._then);

  final MigrateSourceState _self;
  final $Res Function(MigrateSourceState) _then;

/// Create a copy of MigrateSourceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? items = null,Object? sortingMode = null,Object? sortingDirection = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SourceWithCount>,sortingMode: null == sortingMode ? _self.sortingMode : sortingMode // ignore: cast_nullable_to_non_nullable
as MigrateSortingMode,sortingDirection: null == sortingDirection ? _self.sortingDirection : sortingDirection // ignore: cast_nullable_to_non_nullable
as MigrateSortingDirection,
  ));
}

}


/// Adds pattern-matching-related methods to [MigrateSourceState].
extension MigrateSourceStatePatterns on MigrateSourceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MigrateSourceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MigrateSourceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MigrateSourceState value)  $default,){
final _that = this;
switch (_that) {
case _MigrateSourceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MigrateSourceState value)?  $default,){
final _that = this;
switch (_that) {
case _MigrateSourceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<SourceWithCount> items,  MigrateSortingMode sortingMode,  MigrateSortingDirection sortingDirection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MigrateSourceState() when $default != null:
return $default(_that.isLoading,_that.items,_that.sortingMode,_that.sortingDirection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<SourceWithCount> items,  MigrateSortingMode sortingMode,  MigrateSortingDirection sortingDirection)  $default,) {final _that = this;
switch (_that) {
case _MigrateSourceState():
return $default(_that.isLoading,_that.items,_that.sortingMode,_that.sortingDirection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<SourceWithCount> items,  MigrateSortingMode sortingMode,  MigrateSortingDirection sortingDirection)?  $default,) {final _that = this;
switch (_that) {
case _MigrateSourceState() when $default != null:
return $default(_that.isLoading,_that.items,_that.sortingMode,_that.sortingDirection);case _:
  return null;

}
}

}

/// @nodoc


class _MigrateSourceState extends MigrateSourceState {
  const _MigrateSourceState({this.isLoading = true, final  List<SourceWithCount> items = const [], this.sortingMode = MigrateSortingMode.alphabetical, this.sortingDirection = MigrateSortingDirection.ascending}): _items = items,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<SourceWithCount> _items;
@override@JsonKey() List<SourceWithCount> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  MigrateSortingMode sortingMode;
@override@JsonKey() final  MigrateSortingDirection sortingDirection;

/// Create a copy of MigrateSourceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MigrateSourceStateCopyWith<_MigrateSourceState> get copyWith => __$MigrateSourceStateCopyWithImpl<_MigrateSourceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MigrateSourceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.sortingMode, sortingMode) || other.sortingMode == sortingMode)&&(identical(other.sortingDirection, sortingDirection) || other.sortingDirection == sortingDirection));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_items),sortingMode,sortingDirection);

@override
String toString() {
  return 'MigrateSourceState(isLoading: $isLoading, items: $items, sortingMode: $sortingMode, sortingDirection: $sortingDirection)';
}


}

/// @nodoc
abstract mixin class _$MigrateSourceStateCopyWith<$Res> implements $MigrateSourceStateCopyWith<$Res> {
  factory _$MigrateSourceStateCopyWith(_MigrateSourceState value, $Res Function(_MigrateSourceState) _then) = __$MigrateSourceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<SourceWithCount> items, MigrateSortingMode sortingMode, MigrateSortingDirection sortingDirection
});




}
/// @nodoc
class __$MigrateSourceStateCopyWithImpl<$Res>
    implements _$MigrateSourceStateCopyWith<$Res> {
  __$MigrateSourceStateCopyWithImpl(this._self, this._then);

  final _MigrateSourceState _self;
  final $Res Function(_MigrateSourceState) _then;

/// Create a copy of MigrateSourceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? items = null,Object? sortingMode = null,Object? sortingDirection = null,}) {
  return _then(_MigrateSourceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SourceWithCount>,sortingMode: null == sortingMode ? _self.sortingMode : sortingMode // ignore: cast_nullable_to_non_nullable
as MigrateSortingMode,sortingDirection: null == sortingDirection ? _self.sortingDirection : sortingDirection // ignore: cast_nullable_to_non_nullable
as MigrateSortingDirection,
  ));
}


}

/// @nodoc
mixin _$SourceWithCount {

 Source get source; int get count;
/// Create a copy of SourceWithCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceWithCountCopyWith<SourceWithCount> get copyWith => _$SourceWithCountCopyWithImpl<SourceWithCount>(this as SourceWithCount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceWithCount&&(identical(other.source, source) || other.source == source)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,source,count);

@override
String toString() {
  return 'SourceWithCount(source: $source, count: $count)';
}


}

/// @nodoc
abstract mixin class $SourceWithCountCopyWith<$Res>  {
  factory $SourceWithCountCopyWith(SourceWithCount value, $Res Function(SourceWithCount) _then) = _$SourceWithCountCopyWithImpl;
@useResult
$Res call({
 Source source, int count
});


$SourceCopyWith<$Res> get source;

}
/// @nodoc
class _$SourceWithCountCopyWithImpl<$Res>
    implements $SourceWithCountCopyWith<$Res> {
  _$SourceWithCountCopyWithImpl(this._self, this._then);

  final SourceWithCount _self;
  final $Res Function(SourceWithCount) _then;

/// Create a copy of SourceWithCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? count = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Source,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SourceWithCount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceCopyWith<$Res> get source {
  
  return $SourceCopyWith<$Res>(_self.source, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [SourceWithCount].
extension SourceWithCountPatterns on SourceWithCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceWithCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceWithCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceWithCount value)  $default,){
final _that = this;
switch (_that) {
case _SourceWithCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceWithCount value)?  $default,){
final _that = this;
switch (_that) {
case _SourceWithCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Source source,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceWithCount() when $default != null:
return $default(_that.source,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Source source,  int count)  $default,) {final _that = this;
switch (_that) {
case _SourceWithCount():
return $default(_that.source,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Source source,  int count)?  $default,) {final _that = this;
switch (_that) {
case _SourceWithCount() when $default != null:
return $default(_that.source,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _SourceWithCount implements SourceWithCount {
  const _SourceWithCount({required this.source, required this.count});
  

@override final  Source source;
@override final  int count;

/// Create a copy of SourceWithCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceWithCountCopyWith<_SourceWithCount> get copyWith => __$SourceWithCountCopyWithImpl<_SourceWithCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceWithCount&&(identical(other.source, source) || other.source == source)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,source,count);

@override
String toString() {
  return 'SourceWithCount(source: $source, count: $count)';
}


}

/// @nodoc
abstract mixin class _$SourceWithCountCopyWith<$Res> implements $SourceWithCountCopyWith<$Res> {
  factory _$SourceWithCountCopyWith(_SourceWithCount value, $Res Function(_SourceWithCount) _then) = __$SourceWithCountCopyWithImpl;
@override @useResult
$Res call({
 Source source, int count
});


@override $SourceCopyWith<$Res> get source;

}
/// @nodoc
class __$SourceWithCountCopyWithImpl<$Res>
    implements _$SourceWithCountCopyWith<$Res> {
  __$SourceWithCountCopyWithImpl(this._self, this._then);

  final _SourceWithCount _self;
  final $Res Function(_SourceWithCount) _then;

/// Create a copy of SourceWithCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? count = null,}) {
  return _then(_SourceWithCount(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Source,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SourceWithCount
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
