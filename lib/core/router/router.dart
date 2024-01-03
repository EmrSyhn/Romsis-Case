import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../src/view/home_page.dart';
import '../../src/view/second_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'secondScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const SecondPage();
          },
        ),
      ],
    ),
  ],
);
