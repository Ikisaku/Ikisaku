// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Manga {

 int get id; int get source; String get url; String get title; String? get artist; String? get author; String? get description; List<String>? get genre; MangaStatus get status; String? get thumbnailUrl; bool get favorite; DateTime? get lastUpdate; DateTime? get dateAdded; int get viewerFlags; int get chapterFlags; int get coverLastModified; bool get updateStrategy; bool get initialized;
/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaCopyWith<Manga> get copyWith => _$MangaCopyWithImpl<Manga>(this as Manga, _$identity);

  /// Serializes this Manga to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Manga&&(identical(other.id, id) || other.id == id)&&(identical(other.source, source) || other.source == source)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.genre, genre)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.viewerFlags, viewerFlags) || other.viewerFlags == viewerFlags)&&(identical(other.chapterFlags, chapterFlags) || other.chapterFlags == chapterFlags)&&(identical(other.coverLastModified, coverLastModified) || other.coverLastModified == coverLastModified)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.initialized, initialized) || other.initialized == initialized));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,source,url,title,artist,author,description,const DeepCollectionEquality().hash(genre),status,thumbnailUrl,favorite,lastUpdate,dateAdded,viewerFlags,chapterFlags,coverLastModified,updateStrategy,initialized);

@override
String toString() {
  return 'Manga(id: $id, source: $source, url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, status: $status, thumbnailUrl: $thumbnailUrl, favorite: $favorite, lastUpdate: $lastUpdate, dateAdded: $dateAdded, viewerFlags: $viewerFlags, chapterFlags: $chapterFlags, coverLastModified: $coverLastModified, updateStrategy: $updateStrategy, initialized: $initialized)';
}


}

/// @nodoc
abstract mixin class $MangaCopyWith<$Res>  {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) _then) = _$MangaCopyWithImpl;
@useResult
$Res call({
 int id, int source, String url, String title, String? artist, String? author, String? description, List<String>? genre, MangaStatus status, String? thumbnailUrl, bool favorite, DateTime? lastUpdate, DateTime? dateAdded, int viewerFlags, int chapterFlags, int coverLastModified, bool updateStrategy, bool initialized
});




}
/// @nodoc
class _$MangaCopyWithImpl<$Res>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._self, this._then);

  final Manga _self;
  final $Res Function(Manga) _then;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? source = null,Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genre = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? favorite = null,Object? lastUpdate = freezed,Object? dateAdded = freezed,Object? viewerFlags = null,Object? chapterFlags = null,Object? coverLastModified = null,Object? updateStrategy = null,Object? initialized = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,lastUpdate: freezed == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,dateAdded: freezed == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime?,viewerFlags: null == viewerFlags ? _self.viewerFlags : viewerFlags // ignore: cast_nullable_to_non_nullable
as int,chapterFlags: null == chapterFlags ? _self.chapterFlags : chapterFlags // ignore: cast_nullable_to_non_nullable
as int,coverLastModified: null == coverLastModified ? _self.coverLastModified : coverLastModified // ignore: cast_nullable_to_non_nullable
as int,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as bool,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Manga].
extension MangaPatterns on Manga {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Manga value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Manga() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Manga value)  $default,){
final _that = this;
switch (_that) {
case _Manga():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Manga value)?  $default,){
final _that = this;
switch (_that) {
case _Manga() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int source,  String url,  String title,  String? artist,  String? author,  String? description,  List<String>? genre,  MangaStatus status,  String? thumbnailUrl,  bool favorite,  DateTime? lastUpdate,  DateTime? dateAdded,  int viewerFlags,  int chapterFlags,  int coverLastModified,  bool updateStrategy,  bool initialized)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Manga() when $default != null:
return $default(_that.id,_that.source,_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.favorite,_that.lastUpdate,_that.dateAdded,_that.viewerFlags,_that.chapterFlags,_that.coverLastModified,_that.updateStrategy,_that.initialized);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int source,  String url,  String title,  String? artist,  String? author,  String? description,  List<String>? genre,  MangaStatus status,  String? thumbnailUrl,  bool favorite,  DateTime? lastUpdate,  DateTime? dateAdded,  int viewerFlags,  int chapterFlags,  int coverLastModified,  bool updateStrategy,  bool initialized)  $default,) {final _that = this;
switch (_that) {
case _Manga():
return $default(_that.id,_that.source,_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.favorite,_that.lastUpdate,_that.dateAdded,_that.viewerFlags,_that.chapterFlags,_that.coverLastModified,_that.updateStrategy,_that.initialized);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int source,  String url,  String title,  String? artist,  String? author,  String? description,  List<String>? genre,  MangaStatus status,  String? thumbnailUrl,  bool favorite,  DateTime? lastUpdate,  DateTime? dateAdded,  int viewerFlags,  int chapterFlags,  int coverLastModified,  bool updateStrategy,  bool initialized)?  $default,) {final _that = this;
switch (_that) {
case _Manga() when $default != null:
return $default(_that.id,_that.source,_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.favorite,_that.lastUpdate,_that.dateAdded,_that.viewerFlags,_that.chapterFlags,_that.coverLastModified,_that.updateStrategy,_that.initialized);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Manga implements Manga {
  const _Manga({required this.id, required this.source, required this.url, required this.title, this.artist, this.author, this.description, final  List<String>? genre, this.status = MangaStatus.unknown, this.thumbnailUrl, this.favorite = false, this.lastUpdate, this.dateAdded, this.viewerFlags = 0, this.chapterFlags = 0, this.coverLastModified = 0, this.updateStrategy = false, this.initialized = false}): _genre = genre;
  factory _Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

@override final  int id;
@override final  int source;
@override final  String url;
@override final  String title;
@override final  String? artist;
@override final  String? author;
@override final  String? description;
 final  List<String>? _genre;
@override List<String>? get genre {
  final value = _genre;
  if (value == null) return null;
  if (_genre is EqualUnmodifiableListView) return _genre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  MangaStatus status;
@override final  String? thumbnailUrl;
@override@JsonKey() final  bool favorite;
@override final  DateTime? lastUpdate;
@override final  DateTime? dateAdded;
@override@JsonKey() final  int viewerFlags;
@override@JsonKey() final  int chapterFlags;
@override@JsonKey() final  int coverLastModified;
@override@JsonKey() final  bool updateStrategy;
@override@JsonKey() final  bool initialized;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaCopyWith<_Manga> get copyWith => __$MangaCopyWithImpl<_Manga>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Manga&&(identical(other.id, id) || other.id == id)&&(identical(other.source, source) || other.source == source)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._genre, _genre)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.viewerFlags, viewerFlags) || other.viewerFlags == viewerFlags)&&(identical(other.chapterFlags, chapterFlags) || other.chapterFlags == chapterFlags)&&(identical(other.coverLastModified, coverLastModified) || other.coverLastModified == coverLastModified)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.initialized, initialized) || other.initialized == initialized));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,source,url,title,artist,author,description,const DeepCollectionEquality().hash(_genre),status,thumbnailUrl,favorite,lastUpdate,dateAdded,viewerFlags,chapterFlags,coverLastModified,updateStrategy,initialized);

@override
String toString() {
  return 'Manga(id: $id, source: $source, url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, status: $status, thumbnailUrl: $thumbnailUrl, favorite: $favorite, lastUpdate: $lastUpdate, dateAdded: $dateAdded, viewerFlags: $viewerFlags, chapterFlags: $chapterFlags, coverLastModified: $coverLastModified, updateStrategy: $updateStrategy, initialized: $initialized)';
}


}

/// @nodoc
abstract mixin class _$MangaCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$MangaCopyWith(_Manga value, $Res Function(_Manga) _then) = __$MangaCopyWithImpl;
@override @useResult
$Res call({
 int id, int source, String url, String title, String? artist, String? author, String? description, List<String>? genre, MangaStatus status, String? thumbnailUrl, bool favorite, DateTime? lastUpdate, DateTime? dateAdded, int viewerFlags, int chapterFlags, int coverLastModified, bool updateStrategy, bool initialized
});




}
/// @nodoc
class __$MangaCopyWithImpl<$Res>
    implements _$MangaCopyWith<$Res> {
  __$MangaCopyWithImpl(this._self, this._then);

  final _Manga _self;
  final $Res Function(_Manga) _then;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? source = null,Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genre = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? favorite = null,Object? lastUpdate = freezed,Object? dateAdded = freezed,Object? viewerFlags = null,Object? chapterFlags = null,Object? coverLastModified = null,Object? updateStrategy = null,Object? initialized = null,}) {
  return _then(_Manga(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self._genre : genre // ignore: cast_nullable_to_non_nullable
as List<String>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,lastUpdate: freezed == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,dateAdded: freezed == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime?,viewerFlags: null == viewerFlags ? _self.viewerFlags : viewerFlags // ignore: cast_nullable_to_non_nullable
as int,chapterFlags: null == chapterFlags ? _self.chapterFlags : chapterFlags // ignore: cast_nullable_to_non_nullable
as int,coverLastModified: null == coverLastModified ? _self.coverLastModified : coverLastModified // ignore: cast_nullable_to_non_nullable
as int,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as bool,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
