import 'package:json_annotation/json_annotation.dart';

part 'nbu_model.g.dart';

@JsonSerializable(explicitToJson: false)
class NbuModel {
  NbuModel({
    required this.title,
    required this.code,
    required this.cbPrice,
    required this.nbuBuyPrice,
    required this.nbuCellPrice,
    required this.date
  });

 
  @JsonKey(defaultValue: "", name: "title")
  String title;

  @JsonKey(defaultValue: "", name: "code")
  String code;

  @JsonKey(defaultValue: "", name: "cb_price")
  String cbPrice;

  @JsonKey(defaultValue: "", name: "nbu_buy_price")
  String nbuBuyPrice;

  @JsonKey(defaultValue: "", name: "nbu_cell_price")
  String nbuCellPrice;

  @JsonKey(defaultValue: "", name: "date")
  String date;

  factory NbuModel.fromJson(Map<String, dynamic> json) =>
      _$NbuModelFromJson(json);

  Map<String, dynamic> toJson() => _$NbuModelToJson(this);
}


