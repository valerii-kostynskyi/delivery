// ignore_for_file: invalid_annotation_target

import 'package:delivery/data/models/amount/amount_model.dart';
import 'package:delivery/data/models/general_task/general_task_model.dart';
import 'package:delivery/data/models/stat/stat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_info_inner_model.freezed.dart';
part 'general_info_inner_model.g.dart';

@freezed
class GeneralInfoInnerModel with _$GeneralInfoInnerModel {
  const factory GeneralInfoInnerModel({
    @JsonKey(name: 'tasks') required List<GeneralTaskModel> taskList,
    @JsonKey(name: 'stats') required List<StatModel> statList,
    required AmountModel amounts,
    required String farm,
  }) = _GeneralInfoInnerModel;

  factory GeneralInfoInnerModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralInfoInnerModelFromJson(json);
}
