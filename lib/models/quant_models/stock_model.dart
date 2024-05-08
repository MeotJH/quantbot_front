import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  @JsonSerializable(
    includeIfNull: false,
    explicitToJson: true,
  )
  factory StockModel({
    @Default('') String stockName,
    @Default('') String stockCode,
  }) = _StockModel;
  factory StockModel.fromJson(Map<String, dynamic> json) => _$StockModelFromJson(json);
}
