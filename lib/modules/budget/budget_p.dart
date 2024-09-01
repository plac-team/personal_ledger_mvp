import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'budget.dart';

part 'budget_p.g.dart';

@riverpod
class BudgetPresenter extends _$BudgetPresenter {
  @override
  BudgetState build() {
    return const BudgetState.initial(budget: 1000);
  }

  Future<BudgetState> updateBudget({required String money}) async {
    final budget = double.tryParse(money);
    if (budget != null) state = state.copyWith(budget: budget);

    return state;
  }

  Future<BudgetState> updateExpense({required String money}) async {
    final expense = double.tryParse(money);
    if (expense != null) state = state.copyWith(expense: expense);

    return state;
  }

  bool getFeedback({
    required int allDays,
    required int leftDays,
  }) {
    final total = state.budget;
    final current = state.budget - state.expense;

    final avg1 = total / allDays;
    final avg2 = current / (leftDays - 1);

    return (avg2 >= avg1) ? true : false;
  }
}
