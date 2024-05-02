import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_market_model.freezed.dart';
part 'home_market_model.g.dart';

@freezed
class HomeMarketModel with _$HomeMarketModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    includeIfNull: false,
    explicitToJson: true,
  )
  factory HomeMarketModel({
    @Default('') String img,
    @Default('') String data,
  }) = _HomeMarketModel;
  factory HomeMarketModel.fromJson(Map<String, dynamic> json) => _$HomeMarketModelFromJson(json);
}
