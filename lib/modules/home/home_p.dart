
import 'package:personal_ledger_mvp/core/shared/type/daily_money.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/shared/type/money_type.dart';
import '../../core/exception/app_exception.dart';
import '../../entity/common/common_response_entity.dart';
import '../../entity/expense/expense_entity.dart';
import '../../entity/income/income_entity.dart';
import '../budget/budget_p.dart';
import 'home_i.dart';

part 'home_p.g.dart';

@riverpod
class HomePresenter extends _$HomePresenter {
  final HomeInteractor _interactor = HomeInteractorImpl();

  @override
  void build() {}

  Future<bool> upsertMoney({
    required MoneyType type,
    required dynamic money,
  }) async {


    if (type == MoneyType.INCOME) {
      final result = await _interactor.upsertIncome(money: money as DailyIncomeEntity);
      if (result is RESULT<CommonResponseEntity>)
        return await ref.read(budgetPresenterProvider.notifier).upsertMoney(money: Income(money));
    }

    if (type == MoneyType.EXPENSE) {
      final result = await _interactor.upsertExpense(money: money as DailyExpenseEntity);
      if (result is RESULT<CommonResponseEntity>)
        return await ref.read(budgetPresenterProvider.notifier).upsertMoney(money: Expense(money));
    }

    return false;
  }
}
