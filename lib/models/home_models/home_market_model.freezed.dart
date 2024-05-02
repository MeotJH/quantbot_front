// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeMarketModel _$HomeMarketModelFromJson(Map<String, dynamic> json) {
  return _HomeMarketModel.fromJson(json);
}

/// @nodoc
mixin _$HomeMarketModel {
  String get img => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeMarketModelCopyWith<HomeMarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMarketModelCopyWith<$Res> {
  factory $HomeMarketModelCopyWith(
          HomeMarketModel value, $Res Function(HomeMarketModel) then) =
      _$HomeMarketModelCopyWithImpl<$Res, HomeMarketModel>;
  @useResult
  $Res call({String img, String data});
}

/// @nodoc
class _$HomeMarketModelCopyWithImpl<$Res, $Val extends HomeMarketModel>
    implements $HomeMarketModelCopyWith<$Res> {
  _$HomeMarketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeMarketModelImplCopyWith<$Res>
    implements $HomeMarketModelCopyWith<$Res> {
  factory _$$HomeMarketModelImplCopyWith(_$HomeMarketModelImpl value,
          $Res Function(_$HomeMarketModelImpl) then) =
      __$$HomeMarketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String img, String data});
}

/// @nodoc
class __$$HomeMarketModelImplCopyWithImpl<$Res>
    extends _$HomeMarketModelCopyWithImpl<$Res, _$HomeMarketModelImpl>
    implements _$$HomeMarketModelImplCopyWith<$Res> {
  __$$HomeMarketModelImplCopyWithImpl(
      _$HomeMarketModelImpl _value, $Res Function(_$HomeMarketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
    Object? data = null,
  }) {
    return _then(_$HomeMarketModelImpl(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class _$HomeMarketModelImpl implements _HomeMarketModel {
  _$HomeMarketModelImpl({this.img = '', this.data = ''});

  factory _$HomeMarketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeMarketModelImplFromJson(json);

  @override
  @JsonKey()
  final String img;
  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'HomeMarketModel(img: $img, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeMarketModelImpl &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, img, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeMarketModelImplCopyWith<_$HomeMarketModelImpl> get copyWith =>
      __$$HomeMarketModelImplCopyWithImpl<_$HomeMarketModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeMarketModelImplToJson(
      this,
    );
  }
}

abstract class _HomeMarketModel implements HomeMarketModel {
  factory _HomeMarketModel({final String img, final String data}) =
      _$HomeMarketModelImpl;

  factory _HomeMarketModel.fromJson(Map<String, dynamic> json) =
      _$HomeMarketModelImpl.fromJson;

  @override
  String get img;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeMarketModelImplCopyWith<_$HomeMarketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
