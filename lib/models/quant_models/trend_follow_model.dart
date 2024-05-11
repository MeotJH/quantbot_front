import 'package:freezed_annotation/freezed_annotation.dart';

part 'trend_follow_model.freezed.dart';
part 'trend_follow_model.g.dart';

@freezed
class TrendFollowModel with _$TrendFollowModel {
  @JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
  )
  factory TrendFollowModel({
    @Default('') String stockName,
    @Default('') String trendFollowPrice,
    @Default('') String baseDateClosePrice,
    @Default(false) bool isBuy,
    @Default('') String approval,
    @Default('') String market,
    @Default('') String stock,
  }) = _TrendFollowModel;
  factory TrendFollowModel.fromJson(Map<String, dynamic> json) =>
      _$TrendFollowModelFromJson(json);
}
