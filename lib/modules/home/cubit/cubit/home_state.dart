part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default("-") String message,
    @Default([]) List<Map<String, String>> listOFNews,
    @Default([]) List<Map<String, String>> listOfPoli,
  }) = _HomeState;
}
