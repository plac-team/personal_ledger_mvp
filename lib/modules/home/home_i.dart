import 'package:personal_ledger_mvp/entity/expense/expense_entity.dart';

import '../../../../core/exception/app_exception.dart';
import '../../entity/common/common_response_entity.dart';
import '../../entity/income/income_entity.dart';

abstract class HomeInteractor {
  Future<Result<CommonResponseEntity>> upsertIncome(
      {required DailyIncomeEntity money});

  Future<Result<CommonResponseEntity>> upsertExpense(
      {required DailyExpenseEntity money});
}

class HomeInteractorImpl extends HomeInteractor {
  @override
  Future<Result<CommonResponseEntity>> upsertIncome({
    required DailyIncomeEntity money,
  }) async {
    try {
      final mockResponse = CommonResponseEntity(
        statusCode: 200,
        message: 'SUCCESS',
      );
      return RESULT<CommonResponseEntity>(mockResponse);
    } catch (e) {
      return EXCEPTION<CommonResponseEntity>(
        CommonException(message: e.toString()),
      );
    }
  }

  @override
  Future<Result<CommonResponseEntity>> upsertExpense({
    required DailyExpenseEntity money,
  }) async {
    try {
      final mockResponse = CommonResponseEntity(
        statusCode: 200,
        message: 'SUCCESS',
      );
      return RESULT<CommonResponseEntity>(mockResponse);
    } catch (e) {
      return EXCEPTION<CommonResponseEntity>(
        CommonException(message: e.toString()),
      );
    }
  }
}
