import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/shared/type/daily_money.dart';
import 'budget.dart';

part 'budget_p.g.dart';

@Riverpod(keepAlive: true)
class BudgetPresenter extends _$BudgetPresenter {
  @override
  BudgetState build() {
    return const BudgetState.initial(budget: 0);
  }

  /// TODO : DAILY_MONEY -> MONEY로 바꾸기

  Future<bool> insertBudget({required double money}) async {
    state = state.copyWith(budget: state.budget + money);
    return true;
  }

  Future<bool> insertExpense({required double money}) async {
    state = state.copyWith(expense: state.expense + money);
    return true;
  }

  Future<bool> upsertMoney({required Money money}) async {

    if (money.isIncome) {
      final incomeMoney = money as Income;
      final category = incomeMoney.income.category;
      final incomeMap = Map<String, double>.of(state.incomes);

      incomeMap.update(category, (income) => income + incomeMoney.income.price, ifAbsent: () => incomeMoney.income.price);
      state = state.copyWith(budget: state.budget + incomeMoney.income.price, incomes: incomeMap);
    }

    if (money.isExpense) {
      final expenseMoney = money as Expense;
      final category = expenseMoney.expense.category;
      final expenseMap = Map<String, double>.of(state.expenses);

      expenseMap.update(category, (income) => income + expenseMoney.expense.price, ifAbsent: () => expenseMoney.expense.price);
      state = state.copyWith(expense: state.expense + expenseMoney.expense.price, expenses: expenseMap);
    }

    return true;
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
    final avg2 = current / leftDays;

    return (avg2 >= avg1) ? true : false;
  }
}
