// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmountModelImpl _$$AmountModelImplFromJson(Map<String, dynamic> json) =>
    _$AmountModelImpl(
      isDoneAmount: (json['is_done_amount'] as num).toInt(),
      totalAmount: (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$$AmountModelImplToJson(_$AmountModelImpl instance) =>
    <String, dynamic>{
      'is_done_amount': instance.isDoneAmount,
      'total_amount': instance.totalAmount,
    };
