import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:geocam_news/modules/bookmark/cubit/bookmark_article_cubit.dart';
import 'package:geocam_news/modules/bookmark/view/bookmark_article.dart';
import 'package:geocam_news/modules/detail_news/view/detail_new.dart';
import 'package:geocam_news/modules/location/cubit/location_cubit.dart';
import 'package:geocam_news/modules/location/view/location_page.dart';
import 'package:geocam_news/modules/news/cubit/news_cubit.dart';
import 'package:geocam_news/modules/news/view/news.dart';

import 'package:go_router/go_router.dart';
import 'package:geocam_news/widgets/widgets.dart';

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
        name: RouteNames.location,
        path: RouteNames.location,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => LocationCubit(ctx),
            child: const LocationPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.listOfNews,
        path: RouteNames.listOfNews,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => NewsCubit(ctx),
            child: const ListNews(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.bookmark,
        path: RouteNames.bookmark,
        builder: (ctx, GoRouterState state) {
          return BlocProvider(
            create: (ctx) => BookmarkArticleCubit(ctx),
            child: const BookmarkArticle(),
          );
        },
      ),
      GoRoute(
        path: '/detail-article',
        name: RouteNames.detailArticle,
        builder: (context, state) {
          final article = state.extra as Article;
          return DetailNewsPage(article: article);
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
