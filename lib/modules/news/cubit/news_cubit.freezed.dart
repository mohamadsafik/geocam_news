// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewsState {

 DataStateStatus get status; List<Article> get news; List<Article> get bookmarkNews; String get pathFileImage; String get latLng;
/// Create a copy of NewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsStateCopyWith<NewsState> get copyWith => _$NewsStateCopyWithImpl<NewsState>(this as NewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.news, news)&&const DeepCollectionEquality().equals(other.bookmarkNews, bookmarkNews)&&(identical(other.pathFileImage, pathFileImage) || other.pathFileImage == pathFileImage)&&(identical(other.latLng, latLng) || other.latLng == latLng));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(news),const DeepCollectionEquality().hash(bookmarkNews),pathFileImage,latLng);

@override
String toString() {
  return 'NewsState(status: $status, news: $news, bookmarkNews: $bookmarkNews, pathFileImage: $pathFileImage, latLng: $latLng)';
}


}

/// @nodoc
abstract mixin class $NewsStateCopyWith<$Res>  {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) _then) = _$NewsStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, List<Article> news, List<Article> bookmarkNews, String pathFileImage, String latLng
});




}
/// @nodoc
class _$NewsStateCopyWithImpl<$Res>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._self, this._then);

  final NewsState _self;
  final $Res Function(NewsState) _then;

/// Create a copy of NewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? news = null,Object? bookmarkNews = null,Object? pathFileImage = null,Object? latLng = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,news: null == news ? _self.news : news // ignore: cast_nullable_to_non_nullable
as List<Article>,bookmarkNews: null == bookmarkNews ? _self.bookmarkNews : bookmarkNews // ignore: cast_nullable_to_non_nullable
as List<Article>,pathFileImage: null == pathFileImage ? _self.pathFileImage : pathFileImage // ignore: cast_nullable_to_non_nullable
as String,latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _NewsState implements NewsState {
  const _NewsState({this.status = DataStateStatus.initial, final  List<Article> news = const [], final  List<Article> bookmarkNews = const [], this.pathFileImage = "", this.latLng = ""}): _news = news,_bookmarkNews = bookmarkNews;
  

@override@JsonKey() final  DataStateStatus status;
 final  List<Article> _news;
@override@JsonKey() List<Article> get news {
  if (_news is EqualUnmodifiableListView) return _news;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_news);
}

 final  List<Article> _bookmarkNews;
@override@JsonKey() List<Article> get bookmarkNews {
  if (_bookmarkNews is EqualUnmodifiableListView) return _bookmarkNews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarkNews);
}

@override@JsonKey() final  String pathFileImage;
@override@JsonKey() final  String latLng;

/// Create a copy of NewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsStateCopyWith<_NewsState> get copyWith => __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._news, _news)&&const DeepCollectionEquality().equals(other._bookmarkNews, _bookmarkNews)&&(identical(other.pathFileImage, pathFileImage) || other.pathFileImage == pathFileImage)&&(identical(other.latLng, latLng) || other.latLng == latLng));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_news),const DeepCollectionEquality().hash(_bookmarkNews),pathFileImage,latLng);

@override
String toString() {
  return 'NewsState(status: $status, news: $news, bookmarkNews: $bookmarkNews, pathFileImage: $pathFileImage, latLng: $latLng)';
}


}

/// @nodoc
abstract mixin class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(_NewsState value, $Res Function(_NewsState) _then) = __$NewsStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, List<Article> news, List<Article> bookmarkNews, String pathFileImage, String latLng
});




}
/// @nodoc
class __$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(this._self, this._then);

  final _NewsState _self;
  final $Res Function(_NewsState) _then;

/// Create a copy of NewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? news = null,Object? bookmarkNews = null,Object? pathFileImage = null,Object? latLng = null,}) {
  return _then(_NewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,news: null == news ? _self._news : news // ignore: cast_nullable_to_non_nullable
as List<Article>,bookmarkNews: null == bookmarkNews ? _self._bookmarkNews : bookmarkNews // ignore: cast_nullable_to_non_nullable
as List<Article>,pathFileImage: null == pathFileImage ? _self.pathFileImage : pathFileImage // ignore: cast_nullable_to_non_nullable
as String,latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
