// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_task_model.freezed.dart';
part 'general_task_model.g.dart';

@freezed
class GeneralTaskModel with _$GeneralTaskModel {
  const factory GeneralTaskModel({
    @JsonKey(name: 'truck_number') required int truckNumber,
    required int total,
    @JsonKey(name: 'is_done') required int isDone,
  }) = _GeneralTaskModel;

  factory GeneralTaskModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralTaskModelFromJson(json);
}
