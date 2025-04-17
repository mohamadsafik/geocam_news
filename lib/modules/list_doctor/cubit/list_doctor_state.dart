part of 'list_doctor_cubit.dart';

@freezed
abstract class ListDoctorState with _$ListDoctorState {
  const factory ListDoctorState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default("-") String message,
    @Default([]) List<Map<String, String>> listOfDoctor,
  }) = _ListDoctorState;
}
