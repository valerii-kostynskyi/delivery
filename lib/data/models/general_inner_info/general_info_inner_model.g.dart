// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info_inner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralInfoInnerModelImpl _$$GeneralInfoInnerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralInfoInnerModelImpl(
      taskList: (json['tasks'] as List<dynamic>)
          .map((e) => GeneralTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statList: (json['stats'] as List<dynamic>)
          .map((e) => StatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amounts: AmountModel.fromJson(json['amounts'] as Map<String, dynamic>),
      farm: json['farm'] as String,
    );

Map<String, dynamic> _$$GeneralInfoInnerModelImplToJson(
        _$GeneralInfoInnerModelImpl instance) =>
    <String, dynamic>{
      'tasks': instance.taskList,
      'stats': instance.statList,
      'amounts': instance.amounts,
      'farm': instance.farm,
    };
