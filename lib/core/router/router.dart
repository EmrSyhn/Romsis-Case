import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:romsis_case/src/bloc/change_color_bloc.dart';
import '../../src/view/home_page.dart';
import '../../src/view/second_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => ColorBloc(),
          child: HomePage(),
        );
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
