import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../core/shared/constant.dart';
import '../../../entity/expense/expense_entity.dart';

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
