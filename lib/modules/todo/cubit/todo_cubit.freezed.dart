// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState {

 DataStateStatus get status; String get message; bool get isConnectMqtt; List<Map<String, dynamic>> get listMessage;
/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateCopyWith<TodoState> get copyWith => _$TodoStateCopyWithImpl<TodoState>(this as TodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.isConnectMqtt, isConnectMqtt) || other.isConnectMqtt == isConnectMqtt)&&const DeepCollectionEquality().equals(other.listMessage, listMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,isConnectMqtt,const DeepCollectionEquality().hash(listMessage));

@override
String toString() {
  return 'TodoState(status: $status, message: $message, isConnectMqtt: $isConnectMqtt, listMessage: $listMessage)';
}


}

/// @nodoc
abstract mixin class $TodoStateCopyWith<$Res>  {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) _then) = _$TodoStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, String message, bool isConnectMqtt, List<Map<String, dynamic>> listMessage
});




}
/// @nodoc
class _$TodoStateCopyWithImpl<$Res>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._self, this._then);

  final TodoState _self;
  final $Res Function(TodoState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? isConnectMqtt = null,Object? listMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isConnectMqtt: null == isConnectMqtt ? _self.isConnectMqtt : isConnectMqtt // ignore: cast_nullable_to_non_nullable
as bool,listMessage: null == listMessage ? _self.listMessage : listMessage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// @nodoc


class _TodoState implements TodoState {
  const _TodoState({this.status = DataStateStatus.initial, this.message = "-", this.isConnectMqtt = false, final  List<Map<String, dynamic>> listMessage = const []}): _listMessage = listMessage;
  

@override@JsonKey() final  DataStateStatus status;
@override@JsonKey() final  String message;
@override@JsonKey() final  bool isConnectMqtt;
 final  List<Map<String, dynamic>> _listMessage;
@override@JsonKey() List<Map<String, dynamic>> get listMessage {
  if (_listMessage is EqualUnmodifiableListView) return _listMessage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listMessage);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoStateCopyWith<_TodoState> get copyWith => __$TodoStateCopyWithImpl<_TodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoState&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.isConnectMqtt, isConnectMqtt) || other.isConnectMqtt == isConnectMqtt)&&const DeepCollectionEquality().equals(other._listMessage, _listMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,isConnectMqtt,const DeepCollectionEquality().hash(_listMessage));

@override
String toString() {
  return 'TodoState(status: $status, message: $message, isConnectMqtt: $isConnectMqtt, listMessage: $listMessage)';
}


}

/// @nodoc
abstract mixin class _$TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$TodoStateCopyWith(_TodoState value, $Res Function(_TodoState) _then) = __$TodoStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, String message, bool isConnectMqtt, List<Map<String, dynamic>> listMessage
});




}
/// @nodoc
class __$TodoStateCopyWithImpl<$Res>
    implements _$TodoStateCopyWith<$Res> {
  __$TodoStateCopyWithImpl(this._self, this._then);

  final _TodoState _self;
  final $Res Function(_TodoState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? isConnectMqtt = null,Object? listMessage = null,}) {
  return _then(_TodoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isConnectMqtt: null == isConnectMqtt ? _self.isConnectMqtt : isConnectMqtt // ignore: cast_nullable_to_non_nullable
as bool,listMessage: null == listMessage ? _self._listMessage : listMessage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

// dart format on
