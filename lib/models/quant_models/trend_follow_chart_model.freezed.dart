// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trend_follow_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendFollowChartModel _$TrendFollowChartModelFromJson(
    Map<String, dynamic> json) {
  return _TrendFollowChartModel.fromJson(json);
}

/// @nodoc
mixin _$TrendFollowChartModel {
  String get trendFollowPrice => throw _privateConstructorUsedError;
  bool get isBuy => throw _privateConstructorUsedError;
  String get baseDt => throw _privateConstructorUsedError;
  String get closePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendFollowChartModelCopyWith<TrendFollowChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendFollowChartModelCopyWith<$Res> {
  factory $TrendFollowChartModelCopyWith(TrendFollowChartModel value,
          $Res Function(TrendFollowChartModel) then) =
      _$TrendFollowChartModelCopyWithImpl<$Res, TrendFollowChartModel>;
  @useResult
  $Res call(
      {String trendFollowPrice, bool isBuy, String baseDt, String closePrice});
}

/// @nodoc
class _$TrendFollowChartModelCopyWithImpl<$Res,
        $Val extends TrendFollowChartModel>
    implements $TrendFollowChartModelCopyWith<$Res> {
  _$TrendFollowChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendFollowPrice = null,
    Object? isBuy = null,
    Object? baseDt = null,
    Object? closePrice = null,
  }) {
    return _then(_value.copyWith(
      trendFollowPrice: null == trendFollowPrice
          ? _value.trendFollowPrice
          : trendFollowPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: null == isBuy
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      baseDt: null == baseDt
          ? _value.baseDt
          : baseDt // ignore: cast_nullable_to_non_nullable
              as String,
      closePrice: null == closePrice
          ? _value.closePrice
          : closePrice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendFollowChartModelImplCopyWith<$Res>
    implements $TrendFollowChartModelCopyWith<$Res> {
  factory _$$TrendFollowChartModelImplCopyWith(
          _$TrendFollowChartModelImpl value,
          $Res Function(_$TrendFollowChartModelImpl) then) =
      __$$TrendFollowChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String trendFollowPrice, bool isBuy, String baseDt, String closePrice});
}

/// @nodoc
class __$$TrendFollowChartModelImplCopyWithImpl<$Res>
    extends _$TrendFollowChartModelCopyWithImpl<$Res,
        _$TrendFollowChartModelImpl>
    implements _$$TrendFollowChartModelImplCopyWith<$Res> {
  __$$TrendFollowChartModelImplCopyWithImpl(_$TrendFollowChartModelImpl _value,
      $Res Function(_$TrendFollowChartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendFollowPrice = null,
    Object? isBuy = null,
    Object? baseDt = null,
    Object? closePrice = null,
  }) {
    return _then(_$TrendFollowChartModelImpl(
      trendFollowPrice: null == trendFollowPrice
          ? _value.trendFollowPrice
          : trendFollowPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: null == isBuy
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      baseDt: null == baseDt
          ? _value.baseDt
          : baseDt // ignore: cast_nullable_to_non_nullable
              as String,
      closePrice: null == closePrice
          ? _value.closePrice
          : closePrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$TrendFollowChartModelImpl implements _TrendFollowChartModel {
  _$TrendFollowChartModelImpl(
      {this.trendFollowPrice = "0",
      this.isBuy = false,
      this.baseDt = "",
      this.closePrice = "0"});

  factory _$TrendFollowChartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendFollowChartModelImplFromJson(json);

  @override
  @JsonKey()
  final String trendFollowPrice;
  @override
  @JsonKey()
  final bool isBuy;
  @override
  @JsonKey()
  final String baseDt;
  @override
  @JsonKey()
  final String closePrice;

  @override
  String toString() {
    return 'TrendFollowChartModel(trendFollowPrice: $trendFollowPrice, isBuy: $isBuy, baseDt: $baseDt, closePrice: $closePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendFollowChartModelImpl &&
            (identical(other.trendFollowPrice, trendFollowPrice) ||
                other.trendFollowPrice == trendFollowPrice) &&
            (identical(other.isBuy, isBuy) || other.isBuy == isBuy) &&
            (identical(other.baseDt, baseDt) || other.baseDt == baseDt) &&
            (identical(other.closePrice, closePrice) ||
                other.closePrice == closePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trendFollowPrice, isBuy, baseDt, closePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendFollowChartModelImplCopyWith<_$TrendFollowChartModelImpl>
      get copyWith => __$$TrendFollowChartModelImplCopyWithImpl<
          _$TrendFollowChartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendFollowChartModelImplToJson(
      this,
    );
  }
}

abstract class _TrendFollowChartModel implements TrendFollowChartModel {
  factory _TrendFollowChartModel(
      {final String trendFollowPrice,
      final bool isBuy,
      final String baseDt,
      final String closePrice}) = _$TrendFollowChartModelImpl;

  factory _TrendFollowChartModel.fromJson(Map<String, dynamic> json) =
      _$TrendFollowChartModelImpl.fromJson;

  @override
  String get trendFollowPrice;
  @override
  bool get isBuy;
  @override
  String get baseDt;
  @override
  String get closePrice;
  @override
  @JsonKey(ignore: true)
  _$$TrendFollowChartModelImplCopyWith<_$TrendFollowChartModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
