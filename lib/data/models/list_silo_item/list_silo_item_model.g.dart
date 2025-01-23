// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_silo_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListSiloItemModelImpl _$$ListSiloItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListSiloItemModelImpl(
      silos: json['silos'] as String,
      status: json['status'] as String,
      farm: json['farm'] as String,
      billOfLading: json['billOfLading'] as String,
      waybillId: (json['waybillId'] as num).toInt(),
      farmId: (json['farmId'] as num).toInt(),
      silosId: (json['silosId'] as num).toInt(),
      ttnNumber: json['ttnNumber'] as String?,
    );

Map<String, dynamic> _$$ListSiloItemModelImplToJson(
        _$ListSiloItemModelImpl instance) =>
    <String, dynamic>{
      'silos': instance.silos,
      'status': instance.status,
      'farm': instance.farm,
      'billOfLading': instance.billOfLading,
      'waybillId': instance.waybillId,
      'farmId': instance.farmId,
      'silosId': instance.silosId,
      'ttnNumber': instance.ttnNumber,
    };
