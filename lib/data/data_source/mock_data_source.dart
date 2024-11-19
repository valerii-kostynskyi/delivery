import 'package:delivery/data/models/list_silo_item_model.dart';

abstract class MockDataSource {
  Future<String?> authenticate({
    required String carNumber,
    required String password,
  });

  Future<List<ListSiloItemModel>> fetchSilos();
}
