// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryManga {

 int get id; String get title; String get thumbnailUrl; int get unreadCount; int get downloadCount; bool get favorite; List<int> get categories; DateTime? get lastRead; DateTime? get lastUpdate;
/// Create a copy of LibraryManga
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryMangaCopyWith<LibraryManga> get copyWith => _$LibraryMangaCopyWithImpl<LibraryManga>(this as LibraryManga, _$identity);

  /// Serializes this LibraryManga to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryManga&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.downloadCount, downloadCount) || other.downloadCount == downloadCount)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.lastRead, lastRead) || other.lastRead == lastRead)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnailUrl,unreadCount,downloadCount,favorite,const DeepCollectionEquality().hash(categories),lastRead,lastUpdate);

@override
String toString() {
  return 'LibraryManga(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, unreadCount: $unreadCount, downloadCount: $downloadCount, favorite: $favorite, categories: $categories, lastRead: $lastRead, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class $LibraryMangaCopyWith<$Res>  {
  factory $LibraryMangaCopyWith(LibraryManga value, $Res Function(LibraryManga) _then) = _$LibraryMangaCopyWithImpl;
@useResult
$Res call({
 int id, String title, String thumbnailUrl, int unreadCount, int downloadCount, bool favorite, List<int> categories, DateTime? lastRead, DateTime? lastUpdate
});




}
/// @nodoc
class _$LibraryMangaCopyWithImpl<$Res>
    implements $LibraryMangaCopyWith<$Res> {
  _$LibraryMangaCopyWithImpl(this._self, this._then);

  final LibraryManga _self;
  final $Res Function(LibraryManga) _then;

/// Create a copy of LibraryManga
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? thumbnailUrl = null,Object? unreadCount = null,Object? downloadCount = null,Object? favorite = null,Object? categories = null,Object? lastRead = freezed,Object? lastUpdate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,downloadCount: null == downloadCount ? _self.downloadCount : downloadCount // ignore: cast_nullable_to_non_nullable
as int,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<int>,lastRead: freezed == lastRead ? _self.lastRead : lastRead // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUpdate: freezed == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryManga].
extension LibraryMangaPatterns on LibraryManga {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryManga value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryManga() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryManga value)  $default,){
final _that = this;
switch (_that) {
case _LibraryManga():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryManga value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryManga() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String thumbnailUrl,  int unreadCount,  int downloadCount,  bool favorite,  List<int> categories,  DateTime? lastRead,  DateTime? lastUpdate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryManga() when $default != null:
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.unreadCount,_that.downloadCount,_that.favorite,_that.categories,_that.lastRead,_that.lastUpdate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String thumbnailUrl,  int unreadCount,  int downloadCount,  bool favorite,  List<int> categories,  DateTime? lastRead,  DateTime? lastUpdate)  $default,) {final _that = this;
switch (_that) {
case _LibraryManga():
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.unreadCount,_that.downloadCount,_that.favorite,_that.categories,_that.lastRead,_that.lastUpdate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String thumbnailUrl,  int unreadCount,  int downloadCount,  bool favorite,  List<int> categories,  DateTime? lastRead,  DateTime? lastUpdate)?  $default,) {final _that = this;
switch (_that) {
case _LibraryManga() when $default != null:
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.unreadCount,_that.downloadCount,_that.favorite,_that.categories,_that.lastRead,_that.lastUpdate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryManga implements LibraryManga {
  const _LibraryManga({required this.id, required this.title, required this.thumbnailUrl, this.unreadCount = 0, this.downloadCount = 0, this.favorite = false, final  List<int> categories = const [], this.lastRead, this.lastUpdate}): _categories = categories;
  factory _LibraryManga.fromJson(Map<String, dynamic> json) => _$LibraryMangaFromJson(json);

@override final  int id;
@override final  String title;
@override final  String thumbnailUrl;
@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  int downloadCount;
@override@JsonKey() final  bool favorite;
 final  List<int> _categories;
@override@JsonKey() List<int> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  DateTime? lastRead;
@override final  DateTime? lastUpdate;

/// Create a copy of LibraryManga
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryMangaCopyWith<_LibraryManga> get copyWith => __$LibraryMangaCopyWithImpl<_LibraryManga>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryMangaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryManga&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.downloadCount, downloadCount) || other.downloadCount == downloadCount)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.lastRead, lastRead) || other.lastRead == lastRead)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnailUrl,unreadCount,downloadCount,favorite,const DeepCollectionEquality().hash(_categories),lastRead,lastUpdate);

@override
String toString() {
  return 'LibraryManga(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, unreadCount: $unreadCount, downloadCount: $downloadCount, favorite: $favorite, categories: $categories, lastRead: $lastRead, lastUpdate: $lastUpdate)';
}


}

/// @nodoc
abstract mixin class _$LibraryMangaCopyWith<$Res> implements $LibraryMangaCopyWith<$Res> {
  factory _$LibraryMangaCopyWith(_LibraryManga value, $Res Function(_LibraryManga) _then) = __$LibraryMangaCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String thumbnailUrl, int unreadCount, int downloadCount, bool favorite, List<int> categories, DateTime? lastRead, DateTime? lastUpdate
});




}
/// @nodoc
class __$LibraryMangaCopyWithImpl<$Res>
    implements _$LibraryMangaCopyWith<$Res> {
  __$LibraryMangaCopyWithImpl(this._self, this._then);

  final _LibraryManga _self;
  final $Res Function(_LibraryManga) _then;

/// Create a copy of LibraryManga
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? thumbnailUrl = null,Object? unreadCount = null,Object? downloadCount = null,Object? favorite = null,Object? categories = null,Object? lastRead = freezed,Object? lastUpdate = freezed,}) {
  return _then(_LibraryManga(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,downloadCount: null == downloadCount ? _self.downloadCount : downloadCount // ignore: cast_nullable_to_non_nullable
as int,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<int>,lastRead: freezed == lastRead ? _self.lastRead : lastRead // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUpdate: freezed == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
