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
  String get stockCode => throw _privateConstructorUsedError;

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
  $Res call({String stockName, String stockCode});
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
    Object? stockCode = null,
  }) {
    return _then(_value.copyWith(
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
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
  $Res call({String stockName, String stockCode});
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
    Object? stockCode = null,
  }) {
    return _then(_$TrendFollowModelImpl(
      stockName: null == stockName
          ? _value.stockName
          : stockName // ignore: cast_nullable_to_non_nullable
              as String,
      stockCode: null == stockCode
          ? _value.stockCode
          : stockCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$TrendFollowModelImpl implements _TrendFollowModel {
  _$TrendFollowModelImpl({this.stockName = '', this.stockCode = ''});

  factory _$TrendFollowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendFollowModelImplFromJson(json);

  @override
  @JsonKey()
  final String stockName;
  @override
  @JsonKey()
  final String stockCode;

  @override
  String toString() {
    return 'TrendFollowModel(stockName: $stockName, stockCode: $stockCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendFollowModelImpl &&
            (identical(other.stockName, stockName) ||
                other.stockName == stockName) &&
            (identical(other.stockCode, stockCode) ||
                other.stockCode == stockCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stockName, stockCode);

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
  factory _TrendFollowModel({final String stockName, final String stockCode}) =
      _$TrendFollowModelImpl;

  factory _TrendFollowModel.fromJson(Map<String, dynamic> json) =
      _$TrendFollowModelImpl.fromJson;

  @override
  String get stockName;
  @override
  String get stockCode;
  @override
  @JsonKey(ignore: true)
  _$$TrendFollowModelImplCopyWith<_$TrendFollowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
