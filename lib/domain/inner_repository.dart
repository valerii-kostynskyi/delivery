import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/task_model/task_model.dart';

abstract class InnerRepository {
  Future<GeneralInfoInnerModel> fetchGeneralInfo();

  Future<List<TaskModel>> getTaskList({required int truckNumber});

  Future<DetailTaskModel> getDetailTask({
    required int truckNumber,
    required int taskId,
  });

  Future<bool> confirmLoad({
    required int siloID,
    required int taskId,
  });
}
