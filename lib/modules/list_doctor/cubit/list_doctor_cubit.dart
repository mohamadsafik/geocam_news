import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rs_ui/resources/resources.dart';

import '../../../engine/engine.dart';

part 'list_doctor_state.dart';
part 'list_doctor_cubit.freezed.dart';

class ListDoctorCubit extends BaseCubit<ListDoctorState> {
  ListDoctorCubit(BuildContext context) : super(context, ListDoctorState());

  @override
  Future<void> initData() async {
    loadingState();
    try {
      await Future.delayed(const Duration(seconds: 1));
      emit(
        state.copyWith(
          status: DataStateStatus.success,
          listOfDoctor: [
            {
              "name": "Doctor A",
              "specialist": "Dokter Umum",
              "image": Resources.images.doctorA.path,
            },
            {
              "name": "Doctor B",
              "specialist": "Dokter Gigi",
              "image": Resources.images.doctorB.path,
            },
            {
              "name": "Doctor C",
              "specialist": "Dokter Mata",
              "image": Resources.images.doctorC.path,
            },
          ],
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: DataStateStatus.error, message: e.toString()),
      );
    }
    finishRefresh(state.status);
  }

  @override
  void loadingState() async =>
      emit(state.copyWith(status: DataStateStatus.initial));

  @override
  Future<void> refreshData() async => initData();
}
