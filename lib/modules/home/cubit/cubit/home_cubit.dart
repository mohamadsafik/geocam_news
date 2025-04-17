import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rs_ui/engine/engine.dart';
import 'package:rs_ui/resources/resources.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit(BuildContext context) : super(context, HomeState());

  final listOfNews = [
    {
      "title": "Tips Menjaga Kesehatan Gigi",
      "description":
          "Sikat gigi dua kali sehari dan hindari makanan manis berlebih untuk menjaga gigi tetap sehat.",
      "image": Resources.images.gigi.path,
    },
    {
      "title": "Bahaya Konsumsi Gula Berlebih",
      "description":
          "Gula berlebih dapat menyebabkan obesitas, diabetes, dan kerusakan gigi. Batasi konsumsi harianmu.",
      "image": Resources.images.gula.path,
    },
    {
      "title": "Kenali Gejala Penyakit Jantung",
      "description":
          "Nyeri dada, sesak napas, dan kelelahan bisa jadi tanda awal penyakit jantung. Segera periksakan diri.",
      "image": Resources.images.jantung.path,
    },
    {
      "title": "Panduan Kehamilan Sehat",
      "description":
          "Cukupi nutrisi, istirahat yang cukup, dan lakukan pemeriksaan rutin selama masa kehamilan.",
      "image": Resources.images.hamil.path,
    },
    {
      "title": "Atasi Sakit Gigi Secara Alami",
      "description":
          "Kumur dengan air garam hangat atau gunakan cengkeh untuk meredakan sakit gigi sementara.",
      "image": Resources.images.sakitgigi.path,
    },
  ];

  final listOfPoli = [
    {
      "title": "Poli Gigi",
      "description": "Pelayanan perawatan gigi dan mulut.",
      "image": Resources.images.poliGigi.path,
    },
    {
      "title": "Poli Gigi",
      "description": "Pelayanan perawatan anak.",
      "image": Resources.images.poliMata.path,
    },
    {
      "title": "Poliklinik Mata",
      "description": "Pelayanan perawatan mata.",
      "image": Resources.images.poliMata.path,
    },
  ];

  @override
  Future<void> initData() async {
    loadingState();
    log("sdwdasdawd");
    emit(
      state.copyWith(
        status: DataStateStatus.success,
        listOFNews: listOfNews,
        listOfPoli: listOfPoli,
      ),
    );

    finishRefresh(state.status);
  }

  @override
  void loadingState() {
    emit(state.copyWith(status: DataStateStatus.initial));
  }

  @override
  Future<void> refreshData() async {
    initData();
  }
}
