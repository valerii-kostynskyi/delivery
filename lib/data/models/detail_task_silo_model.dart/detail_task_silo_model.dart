// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_task_silo_model.freezed.dart';
part 'detail_task_silo_model.g.dart';

@freezed
class DetailTaskSiloModel with _$DetailTaskSiloModel {
  const factory DetailTaskSiloModel({
    @JsonKey(name: 'farm_id') required int farmId,
    required String code,
    required String name,
    @JsonKey(name: 'storage_amount') required double storageAmount,
    String? feed,
    required int id,
    @JsonKey(name: 'silo_type') String? siloType,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'good_id') required int goodId,
  }) = _DetailTaskSiloModel;

  factory DetailTaskSiloModel.fromJson(Map<String, dynamic> json) =>
      _$DetailTaskSiloModelFromJson(json);
}
