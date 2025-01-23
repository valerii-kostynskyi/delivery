// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatModelImpl _$$StatModelImplFromJson(Map<String, dynamic> json) =>
    _$StatModelImpl(
      sign: json['sign'] as String,
      isDoneAmount: (json['is_done_amount'] as num).toInt(),
      totalAmount: (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$$StatModelImplToJson(_$StatModelImpl instance) =>
    <String, dynamic>{
      'sign': instance.sign,
      'is_done_amount': instance.isDoneAmount,
      'total_amount': instance.totalAmount,
    };
