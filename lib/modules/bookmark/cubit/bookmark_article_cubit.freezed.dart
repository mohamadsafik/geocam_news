// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_article_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookmarkArticleState {

 DataStateStatus get status; List<Article> get bookmarkNews;
/// Create a copy of BookmarkArticleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkArticleStateCopyWith<BookmarkArticleState> get copyWith => _$BookmarkArticleStateCopyWithImpl<BookmarkArticleState>(this as BookmarkArticleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkArticleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.bookmarkNews, bookmarkNews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(bookmarkNews));

@override
String toString() {
  return 'BookmarkArticleState(status: $status, bookmarkNews: $bookmarkNews)';
}


}

/// @nodoc
abstract mixin class $BookmarkArticleStateCopyWith<$Res>  {
  factory $BookmarkArticleStateCopyWith(BookmarkArticleState value, $Res Function(BookmarkArticleState) _then) = _$BookmarkArticleStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, List<Article> bookmarkNews
});




}
/// @nodoc
class _$BookmarkArticleStateCopyWithImpl<$Res>
    implements $BookmarkArticleStateCopyWith<$Res> {
  _$BookmarkArticleStateCopyWithImpl(this._self, this._then);

  final BookmarkArticleState _self;
  final $Res Function(BookmarkArticleState) _then;

/// Create a copy of BookmarkArticleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bookmarkNews = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,bookmarkNews: null == bookmarkNews ? _self.bookmarkNews : bookmarkNews // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}

}


/// @nodoc


class _BookmarkArticleState implements BookmarkArticleState {
  const _BookmarkArticleState({this.status = DataStateStatus.initial, final  List<Article> bookmarkNews = const []}): _bookmarkNews = bookmarkNews;
  

@override@JsonKey() final  DataStateStatus status;
 final  List<Article> _bookmarkNews;
@override@JsonKey() List<Article> get bookmarkNews {
  if (_bookmarkNews is EqualUnmodifiableListView) return _bookmarkNews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarkNews);
}


/// Create a copy of BookmarkArticleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkArticleStateCopyWith<_BookmarkArticleState> get copyWith => __$BookmarkArticleStateCopyWithImpl<_BookmarkArticleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkArticleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._bookmarkNews, _bookmarkNews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_bookmarkNews));

@override
String toString() {
  return 'BookmarkArticleState(status: $status, bookmarkNews: $bookmarkNews)';
}


}

/// @nodoc
abstract mixin class _$BookmarkArticleStateCopyWith<$Res> implements $BookmarkArticleStateCopyWith<$Res> {
  factory _$BookmarkArticleStateCopyWith(_BookmarkArticleState value, $Res Function(_BookmarkArticleState) _then) = __$BookmarkArticleStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, List<Article> bookmarkNews
});




}
/// @nodoc
class __$BookmarkArticleStateCopyWithImpl<$Res>
    implements _$BookmarkArticleStateCopyWith<$Res> {
  __$BookmarkArticleStateCopyWithImpl(this._self, this._then);

  final _BookmarkArticleState _self;
  final $Res Function(_BookmarkArticleState) _then;

/// Create a copy of BookmarkArticleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bookmarkNews = null,}) {
  return _then(_BookmarkArticleState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,bookmarkNews: null == bookmarkNews ? _self._bookmarkNews : bookmarkNews // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}


}

// dart format on
