part of 'register_cubit.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default("-") String message,
  }) = _RegisterState;
}
