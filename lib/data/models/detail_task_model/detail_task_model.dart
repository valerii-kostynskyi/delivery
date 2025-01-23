// ignore_for_file: invalid_annotation_target

import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_task_model.freezed.dart';
part 'detail_task_model.g.dart';

@freezed
class DetailTaskModel with _$DetailTaskModel {
  const factory DetailTaskModel({
    required String feed,
    @JsonKey(name: 'house_name') required String houseName,
    @JsonKey(name: 'house_id') required int houseId,
    @JsonKey(name: 'task_id') required int taskId,
    required double amount,
    required List<DetailTaskSiloModel> silos,
  }) = _DetailTaskModel;

  factory DetailTaskModel.fromJson(Map<String, dynamic> json) =>
      _$DetailTaskModelFromJson(json);
}
