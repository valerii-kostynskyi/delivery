// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTaskModelImpl _$$DetailTaskModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTaskModelImpl(
      feed: json['feed'] as String,
      houseName: json['house_name'] as String,
      houseId: (json['house_id'] as num).toInt(),
      taskId: (json['task_id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      silos: (json['silos'] as List<dynamic>)
          .map((e) => DetailTaskSiloModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailTaskModelImplToJson(
        _$DetailTaskModelImpl instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'house_name': instance.houseName,
      'house_id': instance.houseId,
      'task_id': instance.taskId,
      'amount': instance.amount,
      'silos': instance.silos,
    };
