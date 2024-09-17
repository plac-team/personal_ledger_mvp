import 'package:personal_ledger_mvp/entity/expense/expense_entity.dart';
import 'package:personal_ledger_mvp/entity/income/income_entity.dart';

sealed class Money {}

class Income extends Money {
  final DailyIncomeEntity income;

  Income(this.income);
}

class Expense extends Money {
  final DailyExpenseEntity expense;

  Expense(this.expense);
}

extension MoneyExtensions on Money {
  bool get isIncome => this is Income;
  bool get isExpense => this is Expense;
}

