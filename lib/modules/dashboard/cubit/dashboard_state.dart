part of 'dashboard_cubit.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    required Widget currentScreen,
    required int currentTab,
  }) = _DashboardState;
}
