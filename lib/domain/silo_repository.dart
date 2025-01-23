import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';

abstract class SiloRepository {
  Future<List<ListSiloItemModel>> fetchSilos({required int waybillId});

  Future<int?> getWayBillID({required String barcode});

  Future<bool> confirmBunker({required ListSiloItemModel silo});
}
