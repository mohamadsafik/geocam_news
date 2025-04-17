import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:rs_ui/data/api/services.dart';
import 'package:rs_ui/data/models/base/user.dart';
import 'package:rs_ui/routes/routes.dart';

import '../../../../engine/engine.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends BaseCubit<LoginState> {
  final formKey = GlobalKey<FormBuilderState>();
  LoginCubit(BuildContext context) : super(context, const LoginState());
  @override
  Future<void> initData() async {
    loadingState();
    emit(state.copyWith(status: DataStateStatus.success));
  }

  @override
  void loadingState() => emit(state.copyWith(status: DataStateStatus.initial));

  @override
  Future<void> refreshData() => initData();

  void doLogin(GlobalKey<FormBuilderState> formKey) async {
    loadingState();
    // final data = await ApiService.login(
    //   context,
    //   email: formKey.currentState!.value["email"],
    //   password: formKey.currentState!.value["password"],
    // );
    // if (data.isSuccess) {
    final user = User(
      id: 1,
      email: "test@gmail.com",
      name: "test",
      emailVerifiedAt: null,
      createdAt: null,
      updatedAt: null,
    );
    Sessions.setUserData(
      jsonEncode(user),
    ).then((value) => context.goNamed(RouteNames.root));
    // } else {
    //   emit(state.copyWith(status: DataStateStatus.success));
    //   showError(data.message);
    // }

    finishRefresh(state.status);
  }
}
