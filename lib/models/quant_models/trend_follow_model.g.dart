// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_follow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendFollowModelImpl _$$TrendFollowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendFollowModelImpl(
      stockName: json['stockName'] as String? ?? '',
      trendFollowPrice: json['trendFollowPrice'] as String? ?? '',
      baseDateClosePrice: json['baseDateClosePrice'] as String? ?? '',
      isBuy: json['isBuy'] as bool? ?? false,
      approval: json['approval'] as String? ?? '',
      market: json['market'] as String? ?? '',
      stock: json['stock'] as String? ?? '',
    );

Map<String, dynamic> _$$TrendFollowModelImplToJson(
        _$TrendFollowModelImpl instance) =>
    <String, dynamic>{
      'stockName': instance.stockName,
      'trendFollowPrice': instance.trendFollowPrice,
      'baseDateClosePrice': instance.baseDateClosePrice,
      'isBuy': instance.isBuy,
      'approval': instance.approval,
      'market': instance.market,
      'stock': instance.stock,
    };
