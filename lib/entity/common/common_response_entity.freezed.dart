// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommonResponseEntity _$CommonResponseEntityFromJson(Map<String, dynamic> json) {
  return _CommonResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CommonResponseEntity {
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseEntityCopyWith<CommonResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseEntityCopyWith<$Res> {
  factory $CommonResponseEntityCopyWith(CommonResponseEntity value,
          $Res Function(CommonResponseEntity) then) =
      _$CommonResponseEntityCopyWithImpl<$Res, CommonResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$CommonResponseEntityCopyWithImpl<$Res,
        $Val extends CommonResponseEntity>
    implements $CommonResponseEntityCopyWith<$Res> {
  _$CommonResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonResponseEntityImplCopyWith<$Res>
    implements $CommonResponseEntityCopyWith<$Res> {
  factory _$$CommonResponseEntityImplCopyWith(_$CommonResponseEntityImpl value,
          $Res Function(_$CommonResponseEntityImpl) then) =
      __$$CommonResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$CommonResponseEntityImplCopyWithImpl<$Res>
    extends _$CommonResponseEntityCopyWithImpl<$Res, _$CommonResponseEntityImpl>
    implements _$$CommonResponseEntityImplCopyWith<$Res> {
  __$$CommonResponseEntityImplCopyWithImpl(_$CommonResponseEntityImpl _value,
      $Res Function(_$CommonResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$CommonResponseEntityImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CommonResponseEntityImpl extends _CommonResponseEntity {
  _$CommonResponseEntityImpl(
      {@JsonKey(name: 'status_code') required this.statusCode,
      @JsonKey(name: 'message') required this.message})
      : super._();

  factory _$CommonResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'CommonResponseEntity(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonResponseEntityImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonResponseEntityImplCopyWith<_$CommonResponseEntityImpl>
      get copyWith =>
          __$$CommonResponseEntityImplCopyWithImpl<_$CommonResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CommonResponseEntity extends CommonResponseEntity {
  factory _CommonResponseEntity(
          {@JsonKey(name: 'status_code') required final int statusCode,
          @JsonKey(name: 'message') required final String message}) =
      _$CommonResponseEntityImpl;
  _CommonResponseEntity._() : super._();

  factory _CommonResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CommonResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CommonResponseEntityImplCopyWith<_$CommonResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
