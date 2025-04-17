import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rs_ui/modules/home/cubit/cubit/home_cubit.dart';
import 'package:rs_ui/modules/home/view/home_page.dart';
import 'package:rs_ui/modules/todo/cubit/todo_cubit.dart';
import 'package:rs_ui/modules/todo/view/todo_page.dart';

import '../../../data/mqtt/services.dart';
import '../../../engine/base/base_cubit.dart';

part 'dashboard_state.dart';

part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends BaseCubit<DashboardState> {
  final bucket = PageStorageBucket();

  DashboardCubit(BuildContext context)
    : super(context, DashboardState(currentScreen: Container(), currentTab: 0));

  void onClickProduct() {}

  void changeTab(int index) {
    log('Change Tab $index');
    if (state.currentTab != index) {
      emit(state.copyWith(currentScreen: listScreen[index], currentTab: index));
    }
  }

  @override
  Future<void> initData() async {
    changeTab(1);
    changeTab(0);
  }

  @override
  void loadingState() {}

  @override
  Future<void> refreshData() async => initData();

  final listScreen = [
    BlocProvider(create: (context) => HomeCubit(context), child: HomePage()),
    BlocProvider(create: (context) => TodoCubit(context), child: TodoPage()),
    Container(),
  ];
}
