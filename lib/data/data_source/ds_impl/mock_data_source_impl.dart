import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/data/models/list_silo_item_model.dart';

class MockDataSourceImpl implements MockDataSource {
  MockDataSourceImpl();

  @override
  Future<List<ListSiloItemModel>> fetchSilos() async {
    await Future.delayed(const Duration(seconds: 1));
    return List.generate(
      11,
      (index) => ListSiloItemModel(
        index: index + 1,
        isEmpty: index % 3 == 0,
        farmNumber: index + 1,
        siloNumber: index + 1,
        ttnNumber: index + 12345678 + index,
      ),
    );
  }

  @override
  Future<String?> authenticate({
    required String carNumber,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    Map<String, String> cars = {
      "driver_1": "AA 1234 AA",
      "driver_2": "AA 4321 AA",
    };

    final driver = cars.entries.firstWhere(
      (entry) => entry.value == carNumber,
      orElse: () => const MapEntry("", ""),
    );

    return driver.key.isNotEmpty ? driver.key : null;
  }
}
