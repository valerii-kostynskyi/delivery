// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      feed: json['feed'] as String,
      houseName: json['house_name'] as String,
      houseId: (json['house_id'] as num).toInt(),
      taskId: (json['task_id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      sequenceNumber: (json['sequence_number'] as num).toInt(),
      isLocked: json['is_locked'] as bool,
      isDone: json['is_done'] as bool,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'house_name': instance.houseName,
      'house_id': instance.houseId,
      'task_id': instance.taskId,
      'amount': instance.amount,
      'sequence_number': instance.sequenceNumber,
      'is_locked': instance.isLocked,
      'is_done': instance.isDone,
    };
