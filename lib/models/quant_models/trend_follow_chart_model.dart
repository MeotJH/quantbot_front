import 'package:freezed_annotation/freezed_annotation.dart';

part 'trend_follow_chart_model.freezed.dart';
part 'trend_follow_chart_model.g.dart';

@freezed
class TrendFollowChartModel with _$TrendFollowChartModel {
  @JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
  )
  factory TrendFollowChartModel({
    @Default("0") String trendFollowPrice,
    @Default(false) bool isBuy,
    @Default("") String baseDt,
    @Default("0") String closePrice,
  }) = _TrendFollowChartModel;
  factory TrendFollowChartModel.fromJson(Map<String, dynamic> json) =>
      _$TrendFollowChartModelFromJson(json);

  static TrendFollowChartModel of(
          {required String trendFollowPrice,
          required bool isBuy,
          required String baseDt,
          required String closePrice}) =>
      TrendFollowChartModel(
        trendFollowPrice: trendFollowPrice,
        isBuy: isBuy,
        baseDt: baseDt,
        closePrice: closePrice,
      );
}
