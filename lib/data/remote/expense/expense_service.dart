import 'package:dio/dio.dart' hide Headers;
import 'package:personal_ledger_mvp/entity/expense/expense_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/shared/constant.dart';

part 'expense_service.g.dart';

@RestApi(baseUrl: DefaultUrls.REST_SERVER_URL)
abstract class ExpenseService {
  factory ExpenseService(Dio dio, {String baseUrl}) = _ExpenseService;

  @GET('expense')
  @Headers({'accessToken': 'true'})
  Future<void> fetchAll();

  @PUT('expense')
  @Headers({'accessToken': 'true'})
  Future<void> upsert({
    @Body() required DailyExpenseEntity expense,
  });

  @DELETE('expense')
  @Headers({'accessToken': 'true'})
  Future<void> delete({
    @Body() required DailyExpenseEntity expense,
  });
}
