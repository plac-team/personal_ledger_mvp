// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonResponseEntityImpl _$$CommonResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonResponseEntityImpl(
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CommonResponseEntityImplToJson(
        _$CommonResponseEntityImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
    };
