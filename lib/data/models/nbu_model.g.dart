// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nbu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NbuModel _$NbuModelFromJson(Map<String, dynamic> json) => NbuModel(
      title: json['title'] as String? ?? '',
      code: json['code'] as String? ?? '',
      cbPrice: json['cb_price'] as String? ?? '',
      nbuBuyPrice: json['nbu_buy_price'] as String? ?? '',
      nbuCellPrice: json['nbu_cell_price'] as String? ?? '',
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$NbuModelToJson(NbuModel instance) => <String, dynamic>{
      'title': instance.title,
      'code': instance.code,
      'cb_price': instance.cbPrice,
      'nbu_buy_price': instance.nbuBuyPrice,
      'nbu_cell_price': instance.nbuCellPrice,
      'date': instance.date,
    };
