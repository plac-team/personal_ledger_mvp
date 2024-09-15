// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyExpenseEntityImpl _$$DailyExpenseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyExpenseEntityImpl(
      date: DateTime.parse(json['date'] as String),
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$DailyExpenseEntityImplToJson(
        _$DailyExpenseEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'price': instance.price,
      'category': instance.category,
    };
