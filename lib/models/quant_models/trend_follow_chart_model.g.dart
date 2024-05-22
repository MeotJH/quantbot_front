// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_follow_chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendFollowChartModelImpl _$$TrendFollowChartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendFollowChartModelImpl(
      trendFollowPrice: json['trendFollowPrice'] as String? ?? "0",
      isBuy: json['isBuy'] as bool? ?? false,
      baseDt: json['baseDt'] as String? ?? "",
      closePrice: json['closePrice'] as String? ?? "0",
    );

Map<String, dynamic> _$$TrendFollowChartModelImplToJson(
        _$TrendFollowChartModelImpl instance) =>
    <String, dynamic>{
      'trendFollowPrice': instance.trendFollowPrice,
      'isBuy': instance.isBuy,
      'baseDt': instance.baseDt,
      'closePrice': instance.closePrice,
    };
