// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_model.freezed.dart';
part 'amount_model.g.dart';

@freezed
class AmountModel with _$AmountModel {
  const factory AmountModel({
    @JsonKey(name: 'is_done_amount') required int isDoneAmount,
    @JsonKey(name: 'total_amount') required int totalAmount,
  }) = _AmountModel;

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
      _$AmountModelFromJson(json);
}
