import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_entity.freezed.dart';
part 'expense_entity.g.dart';

@freezed
class DailyExpenseEntity with _$DailyExpenseEntity {
  const factory DailyExpenseEntity({
    required DateTime date,
    required double price,
    required String category,
  }) = _DailyExpenseEntity;

  factory DailyExpenseEntity.fromJson(Map<String, dynamic> json) =>
      _$DailyExpenseEntityFromJson(json);
}
