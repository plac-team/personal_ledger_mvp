import 'package:equatable/equatable.dart';

class BudgetState extends Equatable {
  final double budget;
  final double expense;
  final Map<String, double> incomes;
  final Map<String, double> expenses;


  const BudgetState({required this.budget, required this.expense, required this.incomes, required this.expenses});

  const BudgetState.initial({required this.budget, this.expense = 0.0, this.incomes = const <String, double>{}, this.expenses = const <String, double>{}});

  BudgetState copyWith({double? budget, double? expense, Map<String, double>? incomes, Map<String, double>? expenses}) {
    return BudgetState(
      budget: budget ?? this.budget,
      expense: expense ?? this.expense,
      incomes: incomes ?? this.incomes,
      expenses: expenses ?? this.expenses,
    );
  }

  @override
  List<Object?> get props => [budget, expense, incomes, expenses];
}
