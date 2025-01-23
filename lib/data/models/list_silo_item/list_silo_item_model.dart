import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_silo_item_model.freezed.dart';
part 'list_silo_item_model.g.dart';

@freezed
class ListSiloItemModel with _$ListSiloItemModel {
  const factory ListSiloItemModel({
    required String silos,
    required String status,
    required String farm,
    required String billOfLading,
    required int waybillId,
    required int farmId,
    required int silosId,
    String? ttnNumber,
  }) = _ListSiloItemModel;

  factory ListSiloItemModel.fromJson(Map<String, dynamic> json) =>
      _$ListSiloItemModelFromJson(json);
}
