import 'package:equatable/equatable.dart';

class BudgetState extends Equatable {
  final double budget;
  final double expense;

  const BudgetState({required this.budget, required this.expense});

  const BudgetState.initial({required this.budget, this.expense = 0.0});

  BudgetState copyWith({double? budget, double? expense}) {
    return BudgetState(
      budget: budget ?? this.budget,
      expense: expense ?? this.expense,
    );
  }

  @override
  List<Object?> get props => [budget, expense];
}
