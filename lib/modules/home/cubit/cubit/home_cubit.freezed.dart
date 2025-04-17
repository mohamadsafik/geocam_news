// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 DataStateStatus get status; String get message; List<Map<String, String>> get listOFNews; List<Map<String, String>> get listOfPoli;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.listOFNews, listOFNews)&&const DeepCollectionEquality().equals(other.listOfPoli, listOfPoli));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(listOFNews),const DeepCollectionEquality().hash(listOfPoli));

@override
String toString() {
  return 'HomeState(status: $status, message: $message, listOFNews: $listOFNews, listOfPoli: $listOfPoli)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, String message, List<Map<String, String>> listOFNews, List<Map<String, String>> listOfPoli
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? listOFNews = null,Object? listOfPoli = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listOFNews: null == listOFNews ? _self.listOFNews : listOFNews // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,listOfPoli: null == listOfPoli ? _self.listOfPoli : listOfPoli // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,
  ));
}

}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.status = DataStateStatus.initial, this.message = "-", final  List<Map<String, String>> listOFNews = const [], final  List<Map<String, String>> listOfPoli = const []}): _listOFNews = listOFNews,_listOfPoli = listOfPoli;
  

@override@JsonKey() final  DataStateStatus status;
@override@JsonKey() final  String message;
 final  List<Map<String, String>> _listOFNews;
@override@JsonKey() List<Map<String, String>> get listOFNews {
  if (_listOFNews is EqualUnmodifiableListView) return _listOFNews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOFNews);
}

 final  List<Map<String, String>> _listOfPoli;
@override@JsonKey() List<Map<String, String>> get listOfPoli {
  if (_listOfPoli is EqualUnmodifiableListView) return _listOfPoli;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfPoli);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._listOFNews, _listOFNews)&&const DeepCollectionEquality().equals(other._listOfPoli, _listOfPoli));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_listOFNews),const DeepCollectionEquality().hash(_listOfPoli));

@override
String toString() {
  return 'HomeState(status: $status, message: $message, listOFNews: $listOFNews, listOfPoli: $listOfPoli)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, String message, List<Map<String, String>> listOFNews, List<Map<String, String>> listOfPoli
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? listOFNews = null,Object? listOfPoli = null,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listOFNews: null == listOFNews ? _self._listOFNews : listOFNews // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,listOfPoli: null == listOfPoli ? _self._listOfPoli : listOfPoli // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,
  ));
}


}

// dart format on
