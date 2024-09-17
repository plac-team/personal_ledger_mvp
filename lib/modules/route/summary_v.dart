import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_ledger_mvp/core/shared/chart/expense_category_chart/expense_pie_chart.dart';
import 'package:personal_ledger_mvp/modules/budget/budget_p.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/shared/navigator/page_navigator.dart';

class SummaryView extends ConsumerStatefulWidget {
  const SummaryView({super.key});

  @override
  ConsumerState<SummaryView> createState() => _SummaryViewState();
}

class _SummaryViewState extends ConsumerState<SummaryView> {
  @override
  Widget build(BuildContext context) {
    final budget = ref.watch(budgetPresenterProvider.select((value) => value));

    return Material(
      color: context.colors.primary,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              const PageNavigator(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    color: context.accentColor,
                    child: Center(
                      child: 'budget: ${budget.budget}, expense: ${budget.expense}'.text.make(),
                    ),
                  ).pSymmetric(h: 10, v: 10),
                  Container(
                    height: 100,
                    color: context.accentColor,
                    child: Center(
                      child: '<incomes>\n${budget.incomes}'.text.make(),
                    ),
                  ).pSymmetric(h: 10, v: 10),
                  Container(
                    height: 100,
                    color: context.accentColor,
                    child: Center(
                      child: '<expenses>\n${budget.expenses}'.text.make(),
                    ),
                  ).pSymmetric(h: 10, v: 10),
                ],
              ),

            ],
          )
        ),
      ),
    );
  }
}
