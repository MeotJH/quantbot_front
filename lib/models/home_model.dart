import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    includeIfNull: false,
    explicitToJson: true,
  )
  factory HomeModel({
    @Default('') String alt,
    @Default('') String src,
    @Default('') String href,
  }) = _HomeModel;
  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
}
