import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/shared/navigator/page_navigator.dart';

import '../../core/shared/style/text_field_style.dart';
import '../../core/shared/type/month_type.dart';
import '../../core/shared/chart/budget/budget_chart.dart';
import '../../core/theme/color/colors.dart';
import 'budget_p.dart';

class BudgetView extends ConsumerStatefulWidget {
  const BudgetView({super.key});

  @override
  ConsumerState<BudgetView> createState() => _BudgetViewState();
}

class _BudgetViewState extends ConsumerState<BudgetView> {
  late TextEditingController _budgetController;
  late TextEditingController _expenseController;

  @override
  void initState() {
    super.initState();

    _budgetController = TextEditingController();
    _expenseController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final nowMonth = MonthType.getByCode(DateTime.now().month).displayName;
    final allDays = MonthType.getByCode(DateTime.now().month).defaultDays;
    final currentDay = DateTime.now().day;
    final leftDays = MonthType.getDays(DateTime.now()) - currentDay;
    final isGoodFeedback = ref.watch(budgetPresenterProvider.notifier).getFeedback(allDays: allDays, leftDays: leftDays);

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
                children: [
                  BudgetPieChart(
                    totalBudget: ref.watch(budgetPresenterProvider.select((value) => value.budget)),
                    spent: ref.watch(budgetPresenterProvider.select((value) => value.expense)),
                    currentDay: currentDay,
                    totalDays: allDays,
                    chartColor: isGoodFeedback ? Colors.pass : Colors.error,
                  ),
                  const SizedBox(height: 60),
                  Row(children: [
                    Text('$nowMonth Budget is'),
                    const SizedBox(width: 10),
                    Text(
                      '\$ ${ref.watch(budgetPresenterProvider.select((value) => value.budget))}',
                      style: context.textTheme.titleSmall,
                    ),
                  ]),
                  Row(
                    children: [
                      Text('\$ ${ref.watch(budgetPresenterProvider.select((value) => value.budget - value.expense))}',
                          style: context.textTheme.bodySmall?.copyWith(color: isGoodFeedback ? Colors.pass : Colors.error)),
                      const SizedBox(width: 10),
                      Text('left for $leftDays days')
                    ],
                  ),
                  TextField(
                    controller: _budgetController,
                    cursorColor: TextFieldStyle.INPUT_COLOR,
                    decoration: TextFieldStyle.INPUT_DECORATION.copyWith(hintText: 'change monthly budget'),
                    onSubmitted: (value) {
                      _budgetController.clear();

                      ref.read(budgetPresenterProvider.notifier).updateBudget(money: value);
                    },
                  ),
                  TextField(
                    controller: _expenseController,
                    cursorColor: TextFieldStyle.INPUT_COLOR,
                    decoration: TextFieldStyle.INPUT_DECORATION.copyWith(hintText: 'change monthly expense'),
                    onSubmitted: (value) {
                      _expenseController.clear();

                      ref.read(budgetPresenterProvider.notifier).updateExpense(money: value);
                    },
                  ),
                  Row(children: [
                    Text(
                      isGoodFeedback ? 'Looking Good! You\'re on track with your budget.' : 'Uh-oh! You\'re overspending now...',
                      style: context.textTheme.bodySmall?.copyWith(color: isGoodFeedback ? Colors.pass : Colors.error),
                    )
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
