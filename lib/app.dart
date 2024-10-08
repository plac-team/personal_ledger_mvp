import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_ledger_mvp/modules/budget/budget_p.dart';

import 'core/router/route.dart';
import 'core/theme/custom_theme.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final budgetPresenter = ref.watch(budgetPresenterProvider.notifier);

    return MaterialApp.router(
      builder: (context, child) => child!,
      theme: CustomTheme.themeData,
      routerConfig: router,
    );
  }
}
