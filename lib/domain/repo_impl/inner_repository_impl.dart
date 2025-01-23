import 'package:delivery/data/data_source/api_data_source.dart';
import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/task_model/task_model.dart';
import 'package:delivery/domain/inner_repository.dart';

class InnerRepositoryImpl implements InnerRepository {
  final ApiDataSource apiDataSource;
  final MockDataSource mockDataSource;

  InnerRepositoryImpl({
    required this.apiDataSource,
    required this.mockDataSource,
  });

  @override
  Future<GeneralInfoInnerModel> fetchGeneralInfo() {
    return mockDataSource.fetchGeneralInfo();
  }

  @override
  Future<List<TaskModel>> getTaskList({required int truckNumber}) {
    return mockDataSource.getTaskList(truckNumber: truckNumber);
  }

  @override
  Future<DetailTaskModel> getDetailTask({
    required int truckNumber,
    required int taskId,
  }) {
    return mockDataSource.getDetailTask(
      truckNumber: truckNumber,
      taskId: taskId,
    );
  }

  @override
  Future<bool> confirmLoad({
    required int siloID,
    required int taskId,
  }) {
    return mockDataSource.confirmLoad(taskId: taskId, siloId: siloID);
  }
}
