import 'package:delivery/data/models/list_silo_item_model.dart';

abstract class SiloRepository {
  Future<List<ListSiloItemModel>> fetchSilos();
}
