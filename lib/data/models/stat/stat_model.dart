// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_model.freezed.dart';
part 'stat_model.g.dart';

@freezed
class StatModel with _$StatModel {
  const factory StatModel({
    required String sign,
    @JsonKey(name: 'is_done_amount') required int isDoneAmount,
    @JsonKey(name: 'total_amount') required int totalAmount,
  }) = _StatModel;

  factory StatModel.fromJson(Map<String, dynamic> json) =>
      _$StatModelFromJson(json);
}
