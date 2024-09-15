// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyIncomeEntityImpl _$$DailyIncomeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyIncomeEntityImpl(
      date: DateTime.parse(json['date'] as String),
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$DailyIncomeEntityImplToJson(
        _$DailyIncomeEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'price': instance.price,
      'category': instance.category,
    };
