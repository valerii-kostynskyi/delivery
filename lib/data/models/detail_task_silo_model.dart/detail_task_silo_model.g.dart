// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_task_silo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTaskSiloModelImpl _$$DetailTaskSiloModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTaskSiloModelImpl(
      farmId: (json['farm_id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      storageAmount: (json['storage_amount'] as num).toDouble(),
      feed: json['feed'] as String?,
      id: (json['id'] as num).toInt(),
      siloType: json['silo_type'] as String?,
      lastUpdated: json['last_updated'] as String,
      goodId: (json['good_id'] as num).toInt(),
    );

Map<String, dynamic> _$$DetailTaskSiloModelImplToJson(
        _$DetailTaskSiloModelImpl instance) =>
    <String, dynamic>{
      'farm_id': instance.farmId,
      'code': instance.code,
      'name': instance.name,
      'storage_amount': instance.storageAmount,
      'feed': instance.feed,
      'id': instance.id,
      'silo_type': instance.siloType,
      'last_updated': instance.lastUpdated,
      'good_id': instance.goodId,
    };
