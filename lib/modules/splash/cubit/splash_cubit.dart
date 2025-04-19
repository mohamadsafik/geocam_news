import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../engine/configs/environment.dart';

import '../../../main.dart';
import '../../../routes/routes.dart';

class SplashCubit extends Cubit<String> {
  final BuildContext context;

  SplashCubit(this.context) : super(Environment.appIcon().path) {
    initialize();
  }

  void initialize() async {
    await InitialApps.start();
    sessionLogin();
  }

  void sessionLogin() async {
    // String? dataUser = Sessions.getUserData();
    // if (dataUser == null) {
    Future.delayed(const Duration(seconds: 1), () {
      context.go(RouteNames.location);
    });
    // } else {
    //   Future.delayed(const Duration(seconds: 1), () {
    //     context.go(RouteNames.location);
    //   });
    // }
  }
}
