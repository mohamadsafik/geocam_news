import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:rs_ui/data/mqtt/services.dart';
import 'package:rs_ui/engine/base/base_cubit.dart';
import 'package:rs_ui/engine/helpers/hive_storage.dart';
import 'package:rs_ui/engine/helpers/options.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class TodoCubit extends BaseCubit<TodoState> {
  final MqttService mqttService;
  final formKey = GlobalKey<FormBuilderState>();
  TodoCubit(BuildContext context)
    : mqttService = GetIt.I<MqttService>(),
      super(context, const TodoState());

  @override
  Future<void> initData() async {
    loadingState();
    await connectMqtt();
    List<Map<String, dynamic>> listUpdate = HiveTodoStorage.getAllMessages();
    emit(
      state.copyWith(
        status: DataStateStatus.success,
        message: '',
        listMessage: listUpdate,
      ),
    );
    finishRefresh(state.status);
  }

  @override
  void loadingState() async =>
      emit(state.copyWith(status: DataStateStatus.initial));

  @override
  Future<void> refreshData() async => initData();

  Future<void> connectMqtt() async {
    log("MQTT connection started");
    final connected = await mqttService.connect();

    if (connected) {
      log("MQTT connected successfully");
      await mqttService.subscribeToTopic("todo");

      mqttService.messageStream.listen((message) async {
        log("Received message: $message");
        Map<String, dynamic> messageData = jsonDecode(message);
        await HiveTodoStorage.addMessage(messageData);
        List<Map<String, dynamic>> listUpdate =
            HiveTodoStorage.getAllMessages();
        // List<Map<String, dynamic>> updatedList = List.from(state.listMessage)
        //   ..add(messageData);

        emit(
          state.copyWith(
            status: DataStateStatus.success,
            message: 'Received: $message',
            listMessage: listUpdate,
          ),
        );
      });

      emit(
        state.copyWith(
          status: DataStateStatus.success,
          message: 'Connected to MQTT',
          isConnectMqtt: true,
        ),
      );
    } else {
      log("MQTT connection failed");

      emit(
        state.copyWith(
          status: DataStateStatus.error,
          message: 'Failed to connect to MQTT',
          isConnectMqtt: false,
        ),
      );
    }
  }

  // Fungsi untuk mengirim pesan
  Future<void> sendMessage(GlobalKey<FormBuilderState> formKey) async {
    try {
      String message = jsonEncode({
        "id": 1,
        "title": formKey.currentState?.value["title"],
        "desc": formKey.currentState?.value["desc"],
      });
      await mqttService.publishMessage("todo", message);
      log("Message sent: $message");
      showSuccess("Success membuat todo");
      formKey.currentState?.reset();
    } catch (e) {
      log("Error sending message: $e");
    }
  }
}
