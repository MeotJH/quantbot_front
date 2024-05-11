// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trend_follow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendFollowModel _$TrendFollowModelFromJson(Map<String, dynamic> json) {
  return _TrendFollowModel.fromJson(json);
}

/// @nodoc
mixin _$TrendFollowModel {
  String get stockName => throw _privateConstructorUsedError;
  String get trendFollowPrice => throw _privateConstructorUsedError;
  String get baseDateClosePrice => throw _privateConstructorUsedError;
  bool get isBuy => throw _privateConstructorUsedError;
  String get approval => throw _privateConstructorUsedError;
  String get market => throw _privateConstructorUsedError;
  String get stock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendFollowModelCopyWith<TrendFollowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendFollowModelCopyWith<$Res> {
  factory $TrendFollowModelCopyWith(
          TrendFollowModel value, $Res Function(TrendFollowModel) then) =
      _$TrendFollowModelCopyWithImpl<$Res, TrendFollowModel>;
  @useResult
  $Res call(
      {String stockName,
      String trendFollowPrice,
      String baseDateClosePrice,
      bool isBuy,
      String approval,
      String market,
      String stock});
}

/// @nodoc
class _$TrendFollowModelCopyWithImpl<$Res, $Val extends TrendFollowModel>
    implements $TrendFollowModelCopyWith<$Res> {
  _$TrendFollowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockName = null,
    Object? trendFollowPrice = null,
    Object? baseDateClosePrice = null,
    Object? isBuy = null,
    Object? approval = null,
    Object? market = null,
    Object? stock = null,
  }) {
    return _then(_value.copyWith(
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      trendFollowPrice: null == trendFollowPrice
          ? _value.trendFollowPrice
          : trendFollowPrice // ignore: cast_nullable_to_non_nullable
              as String,
      baseDateClosePrice: null == baseDateClosePrice
          ? _value.baseDateClosePrice
          : baseDateClosePrice // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: null == isBuy
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      approval: null == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendFollowModelImplCopyWith<$Res>
    implements $TrendFollowModelCopyWith<$Res> {
  factory _$$TrendFollowModelImplCopyWith(_$TrendFollowModelImpl value,
          $Res Function(_$TrendFollowModelImpl) then) =
      __$$TrendFollowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stockName,
      String trendFollowPrice,
      String baseDateClosePrice,
      bool isBuy,
      String approval,
      String market,
      String stock});
}

/// @nodoc
class __$$TrendFollowModelImplCopyWithImpl<$Res>
    extends _$TrendFollowModelCopyWithImpl<$Res, _$TrendFollowModelImpl>
    implements _$$TrendFollowModelImplCopyWith<$Res> {
  __$$TrendFollowModelImplCopyWithImpl(_$TrendFollowModelImpl _value,
      $Res Function(_$TrendFollowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockName = null,
    Object? trendFollowPrice = null,
    Object? baseDateClosePrice = null,
    Object? isBuy = null,
    Object? approval = null,
    Object? market = null,
    Object? stock = null,
  }) {
    return _then(_$TrendFollowModelImpl(
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      trendFollowPrice: null == trendFollowPrice
          ? _value.trendFollowPrice
          : trendFollowPrice // ignore: cast_nullable_to_non_nullable
              as String,
      baseDateClosePrice: null == baseDateClosePrice
          ? _value.baseDateClosePrice
          : baseDateClosePrice // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: null == isBuy
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      approval: null == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$TrendFollowModelImpl implements _TrendFollowModel {
  _$TrendFollowModelImpl(
      {this.stockName = '',
      this.trendFollowPrice = '',
      this.baseDateClosePrice = '',
      this.isBuy = false,
      this.approval = '',
      this.market = '',
      this.stock = ''});

  factory _$TrendFollowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendFollowModelImplFromJson(json);

  @override
  @JsonKey()
  final String stockName;
  @override
  @JsonKey()
  final String trendFollowPrice;
  @override
  @JsonKey()
  final String baseDateClosePrice;
  @override
  @JsonKey()
  final bool isBuy;
  @override
  @JsonKey()
  final String approval;
  @override
  @JsonKey()
  final String market;
  @override
  @JsonKey()
  final String stock;

  @override
  String toString() {
    return 'TrendFollowModel(stockName: $stockName, trendFollowPrice: $trendFollowPrice, baseDateClosePrice: $baseDateClosePrice, isBuy: $isBuy, approval: $approval, market: $market, stock: $stock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendFollowModelImpl &&
            (identical(other.stockName, stockName) ||
                other.stockName == stockName) &&
            (identical(other.trendFollowPrice, trendFollowPrice) ||
                other.trendFollowPrice == trendFollowPrice) &&
            (identical(other.baseDateClosePrice, baseDateClosePrice) ||
                other.baseDateClosePrice == baseDateClosePrice) &&
            (identical(other.isBuy, isBuy) || other.isBuy == isBuy) &&
            (identical(other.approval, approval) ||
                other.approval == approval) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stockName, trendFollowPrice,
      baseDateClosePrice, isBuy, approval, market, stock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendFollowModelImplCopyWith<_$TrendFollowModelImpl> get copyWith =>
      __$$TrendFollowModelImplCopyWithImpl<_$TrendFollowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendFollowModelImplToJson(
      this,
    );
  }
}

abstract class _TrendFollowModel implements TrendFollowModel {
  factory _TrendFollowModel(
      {final String stockName,
      final String trendFollowPrice,
      final String baseDateClosePrice,
      final bool isBuy,
      final String approval,
      final String market,
      final String stock}) = _$TrendFollowModelImpl;

  factory _TrendFollowModel.fromJson(Map<String, dynamic> json) =
      _$TrendFollowModelImpl.fromJson;

  @override
  String get stockName;
  @override
  String get trendFollowPrice;
  @override
  String get baseDateClosePrice;
  @override
  bool get isBuy;
  @override
  String get approval;
  @override
  String get market;
  @override
  String get stock;
  @override
  @JsonKey(ignore: true)
  _$$TrendFollowModelImplCopyWith<_$TrendFollowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
