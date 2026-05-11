// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extensions_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtensionsState {

 bool get isLoading; bool get isRefreshing; Map<ExtensionHeader, List<ExtensionUiModel>> get items; int get updates; String? get searchQuery;
/// Create a copy of ExtensionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionsStateCopyWith<ExtensionsState> get copyWith => _$ExtensionsStateCopyWithImpl<ExtensionsState>(this as ExtensionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.updates, updates) || other.updates == updates)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isRefreshing,const DeepCollectionEquality().hash(items),updates,searchQuery);

@override
String toString() {
  return 'ExtensionsState(isLoading: $isLoading, isRefreshing: $isRefreshing, items: $items, updates: $updates, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $ExtensionsStateCopyWith<$Res>  {
  factory $ExtensionsStateCopyWith(ExtensionsState value, $Res Function(ExtensionsState) _then) = _$ExtensionsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isRefreshing, Map<ExtensionHeader, List<ExtensionUiModel>> items, int updates, String? searchQuery
});




}
/// @nodoc
class _$ExtensionsStateCopyWithImpl<$Res>
    implements $ExtensionsStateCopyWith<$Res> {
  _$ExtensionsStateCopyWithImpl(this._self, this._then);

  final ExtensionsState _self;
  final $Res Function(ExtensionsState) _then;

/// Create a copy of ExtensionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isRefreshing = null,Object? items = null,Object? updates = null,Object? searchQuery = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Map<ExtensionHeader, List<ExtensionUiModel>>,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtensionsState].
extension ExtensionsStatePatterns on ExtensionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtensionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtensionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtensionsState value)  $default,){
final _that = this;
switch (_that) {
case _ExtensionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtensionsState value)?  $default,){
final _that = this;
switch (_that) {
case _ExtensionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isRefreshing,  Map<ExtensionHeader, List<ExtensionUiModel>> items,  int updates,  String? searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtensionsState() when $default != null:
return $default(_that.isLoading,_that.isRefreshing,_that.items,_that.updates,_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isRefreshing,  Map<ExtensionHeader, List<ExtensionUiModel>> items,  int updates,  String? searchQuery)  $default,) {final _that = this;
switch (_that) {
case _ExtensionsState():
return $default(_that.isLoading,_that.isRefreshing,_that.items,_that.updates,_that.searchQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isRefreshing,  Map<ExtensionHeader, List<ExtensionUiModel>> items,  int updates,  String? searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _ExtensionsState() when $default != null:
return $default(_that.isLoading,_that.isRefreshing,_that.items,_that.updates,_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _ExtensionsState extends ExtensionsState {
  const _ExtensionsState({this.isLoading = true, this.isRefreshing = false, final  Map<ExtensionHeader, List<ExtensionUiModel>> items = const {}, this.updates = 0, this.searchQuery}): _items = items,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isRefreshing;
 final  Map<ExtensionHeader, List<ExtensionUiModel>> _items;
@override@JsonKey() Map<ExtensionHeader, List<ExtensionUiModel>> get items {
  if (_items is EqualUnmodifiableMapView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_items);
}

@override@JsonKey() final  int updates;
@override final  String? searchQuery;

/// Create a copy of ExtensionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtensionsStateCopyWith<_ExtensionsState> get copyWith => __$ExtensionsStateCopyWithImpl<_ExtensionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtensionsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.updates, updates) || other.updates == updates)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isRefreshing,const DeepCollectionEquality().hash(_items),updates,searchQuery);

@override
String toString() {
  return 'ExtensionsState(isLoading: $isLoading, isRefreshing: $isRefreshing, items: $items, updates: $updates, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$ExtensionsStateCopyWith<$Res> implements $ExtensionsStateCopyWith<$Res> {
  factory _$ExtensionsStateCopyWith(_ExtensionsState value, $Res Function(_ExtensionsState) _then) = __$ExtensionsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isRefreshing, Map<ExtensionHeader, List<ExtensionUiModel>> items, int updates, String? searchQuery
});




}
/// @nodoc
class __$ExtensionsStateCopyWithImpl<$Res>
    implements _$ExtensionsStateCopyWith<$Res> {
  __$ExtensionsStateCopyWithImpl(this._self, this._then);

  final _ExtensionsState _self;
  final $Res Function(_ExtensionsState) _then;

/// Create a copy of ExtensionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isRefreshing = null,Object? items = null,Object? updates = null,Object? searchQuery = freezed,}) {
  return _then(_ExtensionsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as Map<ExtensionHeader, List<ExtensionUiModel>>,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as int,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
