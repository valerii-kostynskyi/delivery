// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String feed,
    @JsonKey(name: 'house_name') required String houseName,
    @JsonKey(name: 'house_id') required int houseId,
    @JsonKey(name: 'task_id') required int taskId,
    required double amount,
    @JsonKey(name: 'sequence_number') required int sequenceNumber,
    @JsonKey(name: 'is_locked') required bool isLocked,
    @JsonKey(name: 'is_done') required bool isDone,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
