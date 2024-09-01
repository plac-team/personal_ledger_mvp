import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../router/route.dart';

class PageNavigator extends ConsumerStatefulWidget {
  const PageNavigator({super.key});

  @override
  ConsumerState<PageNavigator> createState() => _PageNavigatorState();
}

class _PageNavigatorState extends ConsumerState<PageNavigator> {
  @override
  Widget build(BuildContext context) {
    final currentPageName = GoRouterState.of(context).name;

    Color? getColorIfSelected(String pageName) {
      return currentPageName == pageName ? context.colors.surface : null;
    }

    return Row(
      children: [
        IconButton(
          onPressed: () => ref.read(routerProvider).pushReplacementNamed('home'),
          icon: Text('home', style: TextStyle(color: getColorIfSelected('home'))),
        ),
        IconButton(
          onPressed: () => ref.read(routerProvider).pushReplacementNamed('budget'),
          icon: Text('budget', style: TextStyle(color: getColorIfSelected('budget'))),
        ),
        IconButton(
          onPressed: () => ref.read(routerProvider).pushReplacementNamed('summary'),
          icon: Text('summary', style: TextStyle(color: getColorIfSelected('summary'))),
        ),
      ],
    );
  }
}
