// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationState {

 DataStateStatus get status; String get latlong; LatLng get latLng;
/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationStateCopyWith<LocationState> get copyWith => _$LocationStateCopyWithImpl<LocationState>(this as LocationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationState&&(identical(other.status, status) || other.status == status)&&(identical(other.latlong, latlong) || other.latlong == latlong)&&(identical(other.latLng, latLng) || other.latLng == latLng));
}


@override
int get hashCode => Object.hash(runtimeType,status,latlong,latLng);

@override
String toString() {
  return 'LocationState(status: $status, latlong: $latlong, latLng: $latLng)';
}


}

/// @nodoc
abstract mixin class $LocationStateCopyWith<$Res>  {
  factory $LocationStateCopyWith(LocationState value, $Res Function(LocationState) _then) = _$LocationStateCopyWithImpl;
@useResult
$Res call({
 DataStateStatus status, String latlong, LatLng latLng
});




}
/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._self, this._then);

  final LocationState _self;
  final $Res Function(LocationState) _then;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? latlong = null,Object? latLng = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,latlong: null == latlong ? _self.latlong : latlong // ignore: cast_nullable_to_non_nullable
as String,latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}

}


/// @nodoc


class _LocationState implements LocationState {
  const _LocationState({this.status = DataStateStatus.initial, this.latlong = "", this.latLng = const LatLng(-6.2088, 106.8456)});
  

@override@JsonKey() final  DataStateStatus status;
@override@JsonKey() final  String latlong;
@override@JsonKey() final  LatLng latLng;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationStateCopyWith<_LocationState> get copyWith => __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationState&&(identical(other.status, status) || other.status == status)&&(identical(other.latlong, latlong) || other.latlong == latlong)&&(identical(other.latLng, latLng) || other.latLng == latLng));
}


@override
int get hashCode => Object.hash(runtimeType,status,latlong,latLng);

@override
String toString() {
  return 'LocationState(status: $status, latlong: $latlong, latLng: $latLng)';
}


}

/// @nodoc
abstract mixin class _$LocationStateCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(_LocationState value, $Res Function(_LocationState) _then) = __$LocationStateCopyWithImpl;
@override @useResult
$Res call({
 DataStateStatus status, String latlong, LatLng latLng
});




}
/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(this._self, this._then);

  final _LocationState _self;
  final $Res Function(_LocationState) _then;

/// Create a copy of LocationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? latlong = null,Object? latLng = null,}) {
  return _then(_LocationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStateStatus,latlong: null == latlong ? _self.latlong : latlong // ignore: cast_nullable_to_non_nullable
as String,latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}


}

// dart format on
