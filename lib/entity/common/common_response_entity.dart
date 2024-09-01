import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response_entity.freezed.dart';
part 'common_response_entity.g.dart';

@freezed
class CommonResponseEntity with _$CommonResponseEntity {
  CommonResponseEntity._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory CommonResponseEntity({
    @JsonKey(name: 'status_code') required int statusCode,
    @JsonKey(name: 'message') required String message,
  }) = _CommonResponseEntity;

  factory CommonResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseEntityFromJson(json);
}
