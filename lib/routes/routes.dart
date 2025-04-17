import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:rs_ui/modules/auth/login/views/login.dart';
import 'package:rs_ui/modules/dashboard/dashboard.dart';
import 'package:rs_ui/modules/list_doctor/cubit/list_doctor_cubit.dart';
import 'package:rs_ui/modules/list_doctor/view/list_doctor.dart';
import 'package:rs_ui/modules/todo/cubit/todo_cubit.dart';
import 'package:rs_ui/modules/todo/view/todo_page.dart';
import 'package:rs_ui/widgets/widgets.dart';

import '../modules/auth/login/cubit/login_cubit.dart';
import '../modules/auth/register/cubit/register_cubit.dart';
import '../modules/auth/register/views/register.dart';
import '../modules/splash/cubit/splash_cubit.dart';
import '../modules/splash/views/splash_page.dart';

part 'route_names.dart';

class Routes implements RouterInterface {
  static final route = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RouteNames.root,
        path: RouteNames.root,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => SplashCubit(ctx),
            child: const SplashPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.register,
        path: RouteNames.register,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => RegisterCubit(ctx),
            child: const RegisterPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.login,
        path: RouteNames.login,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => LoginCubit(ctx),
            child: const LoginPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.dashboard,
        path: RouteNames.dashboard,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => DashboardCubit(ctx),
            child: const DashboardPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.listDoctor,
        path: RouteNames.listDoctor,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => ListDoctorCubit(ctx),
            child: const ListDoctorPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.todo,
        path: RouteNames.todo,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => TodoCubit(ctx),
            child: const TodoPage(),
          );
        },
      ),
    ],
    errorBuilder: (ctx, GoRouterState state) {
      return const UnknownPage();
    },
  );

  @override
  RouteInformationParser<Object> getRouteInformationParser() =>
      route.routeInformationParser;

  @override
  RouteInformationProvider? getRouteInformationProvider() =>
      route.routeInformationProvider;

  @override
  RouterDelegate<Object> getRouterDelegate() => route.routerDelegate;
}

abstract class RouterInterface {
  RouteInformationProvider? getRouteInformationProvider();

  RouteInformationParser<Object> getRouteInformationParser();

  RouterDelegate<Object> getRouterDelegate();
}
