// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyIncomeEntity _$DailyIncomeEntityFromJson(Map<String, dynamic> json) {
  return _DailyIncomeEntity.fromJson(json);
}

/// @nodoc
mixin _$DailyIncomeEntity {
  DateTime get date => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyIncomeEntityCopyWith<DailyIncomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyIncomeEntityCopyWith<$Res> {
  factory $DailyIncomeEntityCopyWith(
          DailyIncomeEntity value, $Res Function(DailyIncomeEntity) then) =
      _$DailyIncomeEntityCopyWithImpl<$Res, DailyIncomeEntity>;
  @useResult
  $Res call({DateTime date, double price, String category});
}

/// @nodoc
class _$DailyIncomeEntityCopyWithImpl<$Res, $Val extends DailyIncomeEntity>
    implements $DailyIncomeEntityCopyWith<$Res> {
  _$DailyIncomeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? price = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyIncomeEntityImplCopyWith<$Res>
    implements $DailyIncomeEntityCopyWith<$Res> {
  factory _$$DailyIncomeEntityImplCopyWith(_$DailyIncomeEntityImpl value,
          $Res Function(_$DailyIncomeEntityImpl) then) =
      __$$DailyIncomeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double price, String category});
}

/// @nodoc
class __$$DailyIncomeEntityImplCopyWithImpl<$Res>
    extends _$DailyIncomeEntityCopyWithImpl<$Res, _$DailyIncomeEntityImpl>
    implements _$$DailyIncomeEntityImplCopyWith<$Res> {
  __$$DailyIncomeEntityImplCopyWithImpl(_$DailyIncomeEntityImpl _value,
      $Res Function(_$DailyIncomeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? price = null,
    Object? category = null,
  }) {
    return _then(_$DailyIncomeEntityImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyIncomeEntityImpl implements _DailyIncomeEntity {
  const _$DailyIncomeEntityImpl(
      {required this.date, required this.price, required this.category});

  factory _$DailyIncomeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyIncomeEntityImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double price;
  @override
  final String category;

  @override
  String toString() {
    return 'DailyIncomeEntity(date: $date, price: $price, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, price, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyIncomeEntityImplCopyWith<_$DailyIncomeEntityImpl> get copyWith =>
      __$$DailyIncomeEntityImplCopyWithImpl<_$DailyIncomeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyIncomeEntityImplToJson(
      this,
    );
  }
}

abstract class _DailyIncomeEntity implements DailyIncomeEntity {
  const factory _DailyIncomeEntity(
      {required final DateTime date,
      required final double price,
      required final String category}) = _$DailyIncomeEntityImpl;

  factory _DailyIncomeEntity.fromJson(Map<String, dynamic> json) =
      _$DailyIncomeEntityImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get price;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$DailyIncomeEntityImplCopyWith<_$DailyIncomeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
