// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_doctor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListDoctorState {

 DataStateStatus get status; String get message; List<Map<String, String>> get listOfDoctor;
/// Create a copy of ListDoctorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDoctorStateCopyWith<ListDoctorState> get copyWith => _$ListDoctorStateCopyWithImpl<ListDoctorState>(this as ListDoctorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDoctorState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.listOfDoctor, listOfDoctor));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(listOfDoctor));

@override
String toString() {
  return 'ListDoctorState(status: $status, message: $message, listOfDoctor: $listOfDoctor)';
}


}

/// @nodoc
abstract mixin class $ListDoctorStateCopyWith<$Res>  {
  factory $ListDoctorStateCopyWith(ListDoctorState value, $Res Function(ListDoctorState) _then) = _$ListDoctorStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, String message, List<Map<String, String>> listOfDoctor
});




}
/// @nodoc
class _$ListDoctorStateCopyWithImpl<$Res>
    implements $ListDoctorStateCopyWith<$Res> {
  _$ListDoctorStateCopyWithImpl(this._self, this._then);

  final ListDoctorState _self;
  final $Res Function(ListDoctorState) _then;

/// Create a copy of ListDoctorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? listOfDoctor = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listOfDoctor: null == listOfDoctor ? _self.listOfDoctor : listOfDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,
  ));
}

}


/// @nodoc


class _ListDoctorState implements ListDoctorState {
  const _ListDoctorState({this.status = DataStateStatus.initial, this.message = "-", final  List<Map<String, String>> listOfDoctor = const []}): _listOfDoctor = listOfDoctor;
  

@override@JsonKey() final  DataStateStatus status;
@override@JsonKey() final  String message;
 final  List<Map<String, String>> _listOfDoctor;
@override@JsonKey() List<Map<String, String>> get listOfDoctor {
  if (_listOfDoctor is EqualUnmodifiableListView) return _listOfDoctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfDoctor);
}


/// Create a copy of ListDoctorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDoctorStateCopyWith<_ListDoctorState> get copyWith => __$ListDoctorStateCopyWithImpl<_ListDoctorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListDoctorState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._listOfDoctor, _listOfDoctor));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_listOfDoctor));

@override
String toString() {
  return 'ListDoctorState(status: $status, message: $message, listOfDoctor: $listOfDoctor)';
}


}

/// @nodoc
abstract mixin class _$ListDoctorStateCopyWith<$Res> implements $ListDoctorStateCopyWith<$Res> {
  factory _$ListDoctorStateCopyWith(_ListDoctorState value, $Res Function(_ListDoctorState) _then) = __$ListDoctorStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, String message, List<Map<String, String>> listOfDoctor
});




}
/// @nodoc
class __$ListDoctorStateCopyWithImpl<$Res>
    implements _$ListDoctorStateCopyWith<$Res> {
  __$ListDoctorStateCopyWithImpl(this._self, this._then);

  final _ListDoctorState _self;
  final $Res Function(_ListDoctorState) _then;

/// Create a copy of ListDoctorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? listOfDoctor = null,}) {
  return _then(_ListDoctorState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listOfDoctor: null == listOfDoctor ? _self._listOfDoctor : listOfDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, String>>,
  ));
}


}

// dart format on
