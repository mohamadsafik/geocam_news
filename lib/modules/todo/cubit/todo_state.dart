part of 'todo_cubit.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default("-") String message,
    @Default(false) bool isConnectMqtt,
    @Default([]) List<Map<String, dynamic>> listMessage,
  }) = _TodoState;
}
