// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardState implements DiagnosticableTreeMixin {

 Widget get currentScreen; int get currentTab;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DashboardState'))
    ..add(DiagnosticsProperty('currentScreen', currentScreen))..add(DiagnosticsProperty('currentTab', currentTab));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.currentScreen, currentScreen) || other.currentScreen == currentScreen)&&(identical(other.currentTab, currentTab) || other.currentTab == currentTab));
}


@override
int get hashCode => Object.hash(runtimeType,currentScreen,currentTab);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DashboardState(currentScreen: $currentScreen, currentTab: $currentTab)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 Widget currentScreen, int currentTab
});




}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentScreen = null,Object? currentTab = null,}) {
  return _then(_self.copyWith(
currentScreen: null == currentScreen ? _self.currentScreen : currentScreen // ignore: cast_nullable_to_non_nullable
as Widget,currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _DashboardState with DiagnosticableTreeMixin implements DashboardState {
  const _DashboardState({required this.currentScreen, required this.currentTab});
  

@override final  Widget currentScreen;
@override final  int currentTab;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DashboardState'))
    ..add(DiagnosticsProperty('currentScreen', currentScreen))..add(DiagnosticsProperty('currentTab', currentTab));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.currentScreen, currentScreen) || other.currentScreen == currentScreen)&&(identical(other.currentTab, currentTab) || other.currentTab == currentTab));
}


@override
int get hashCode => Object.hash(runtimeType,currentScreen,currentTab);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DashboardState(currentScreen: $currentScreen, currentTab: $currentTab)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 Widget currentScreen, int currentTab
});




}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentScreen = null,Object? currentTab = null,}) {
  return _then(_DashboardState(
currentScreen: null == currentScreen ? _self.currentScreen : currentScreen // ignore: cast_nullable_to_non_nullable
as Widget,currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
