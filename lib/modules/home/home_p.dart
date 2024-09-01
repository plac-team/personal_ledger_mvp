import 'package:personal_ledger_mvp/core/shared/money_type.dart';
import 'package:personal_ledger_mvp/entity/common/common_response_entity.dart';
import 'package:personal_ledger_mvp/entity/expense/expense_entity.dart';
import 'package:personal_ledger_mvp/entity/income/income_entity.dart';
import 'package:personal_ledger_mvp/modules/home/home_i.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exception/app_exception.dart';

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
    print('[VM] upsert money');

    if (type == MoneyType.INCOME) {
      final result =
          await _interactor.upsertIncome(money: money as DailyIncomeEntity);
      print('upsert income result => ${result}');
      if (result is RESULT<CommonResponseEntity>) return true;
    }

    if (type == MoneyType.EXPENSE) {
      final result =
          await _interactor.upsertExpense(money: money as DailyExpenseEntity);
      print('upsert exepense result => ${result}');

      if (result is RESULT<CommonResponseEntity>) return true;
    }

    return false;
  }
}
