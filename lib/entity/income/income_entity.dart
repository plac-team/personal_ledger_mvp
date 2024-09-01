import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_entity.freezed.dart';
part 'income_entity.g.dart';

@freezed
class DailyIncomeEntity with _$DailyIncomeEntity {
  const factory DailyIncomeEntity({
    required DateTime date,
    required double price,
    required String category,
  }) = _DailyIncomeEntity;

  factory DailyIncomeEntity.fromJson(Map<String, dynamic> json) =>
      _$DailyIncomeEntityFromJson(json);
}
