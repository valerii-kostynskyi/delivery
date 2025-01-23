import 'package:delivery/data/models/auth_model/auth_model.dart';
import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/data/models/task_model/task_model.dart';

abstract class MockDataSource {
  Future<List<ListSiloItemModel>> fetchSilos({required int waybillId});

  Future<GeneralInfoInnerModel> fetchGeneralInfo();

  Future<List<TaskModel>> getTaskList({required int truckNumber});

  Future<DetailTaskModel> getDetailTask({
    required int truckNumber,
    required int taskId,
  });

  Future<bool> confirmLoad({
    required int taskId,
    required int siloId,
  });

  Future<int?> getWayBillID({required String barcode});

  Future<bool> confirmBunker({required ListSiloItemModel silo});

  Future<AuthModel?> login({
    required String carNumber,
    required String password,
  });
}
