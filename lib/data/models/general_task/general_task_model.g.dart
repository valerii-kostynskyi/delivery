// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralTaskModelImpl _$$GeneralTaskModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralTaskModelImpl(
      truckNumber: (json['truck_number'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      isDone: (json['is_done'] as num).toInt(),
    );

Map<String, dynamic> _$$GeneralTaskModelImplToJson(
        _$GeneralTaskModelImpl instance) =>
    <String, dynamic>{
      'truck_number': instance.truckNumber,
      'total': instance.total,
      'is_done': instance.isDone,
    };
