import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../modules/home/home_v.dart';
import '../../modules/budget/budget_v.dart';
import '../../modules/route/summary_v.dart';

part 'route.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  final router = GoRouter(
    navigatorKey: routerKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const HomeView(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return _buildTransition(context, animation, secondaryAnimation, child);
            },
          );
        },
      ),
      GoRoute(
        path: '/budget',
        name: 'budget',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const BudgetView(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return _buildTransition(context, animation, secondaryAnimation, child);
            },
          );
        },
      ),
      GoRoute(
        path: '/summary',
        name: 'summary',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SummaryView(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return _buildTransition(context, animation, secondaryAnimation, child);
            },
          );
        },
      ),
    ],
  );

  ref.onDispose(router.dispose);

  return router;
}

SlideTransition _buildTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset.zero;
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
