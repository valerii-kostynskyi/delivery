import 'package:delivery/data/data_source/api_data_source.dart';
import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/data/models/list_silo_item_model.dart';
import 'package:delivery/domain/silo_repository.dart';

class SiloRepositoryImpl implements SiloRepository {
  final ApiDataSource apiDataSource;
  final MockDataSource mockDataSource;

  SiloRepositoryImpl({
    required this.apiDataSource,
    required this.mockDataSource,
  });

  @override
  Future<List<ListSiloItemModel>> fetchSilos() async {
    return await mockDataSource.fetchSilos();
  }
}
