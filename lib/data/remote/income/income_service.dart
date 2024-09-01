import 'package:dio/dio.dart' hide Headers;
import 'package:personal_ledger_mvp/entity/income/income_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/shared/constant.dart';

part 'income_service.g.dart';

@RestApi(baseUrl: DefaultUrls.REST_SERVER_URL)
abstract class IncomeService {
  factory IncomeService(Dio dio, {String baseUrl}) = _IncomeService;

  @GET('income')
  @Headers({'accessToken': 'true'})
  Future<void> fetchAll();

  @PUT('income')
  @Headers({'accessToken': 'true'})
  Future<void> upsert({
    @Body() required DailyIncomeEntity income,
  });

  @DELETE('income')
  @Headers({'accessToken': 'true'})
  Future<void> delete({
    @Body() required DailyIncomeEntity income,
  });
}
