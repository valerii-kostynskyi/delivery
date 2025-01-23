import 'dart:convert';

import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/data/models/task_model/task_model.dart';

class MockDataSourceImpl implements MockDataSource {
  MockDataSourceImpl();

  @override
  Future<List<ListSiloItemModel>> fetchSilos({required int waybillId}) async {
    await Future.delayed(const Duration(seconds: 1));

    const mockResponse = '''
    {
      "items": [
        {
          "silos": "B001",
          "status": "full",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 1
        },
        {
          "silos": "B002",
          "status": "full",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 2
        },
        {
          "silos": "B003",
          "status": "empty",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 3
        },
        {
          "silos": "B004",
          "status": "full",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 5
        },
        {
          "silos": "B005",
          "status": "full",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 6
        },
        {
          "silos": "B006",
          "status": "full",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 7
        },
        {
          "silos": "B007",
          "status": "empty",
          "farm": "VB06",
          "billOfLading": "КЗ300122508",
          "waybillId": 17,
          "farmId": 1,
          "silosId": 8
        }
      ]
    }
    ''';

    final data = jsonDecode(mockResponse) as Map<String, dynamic>;
    final items = (data['items'] as List)
        .map((item) => ListSiloItemModel.fromJson(item))
        .toList();

    return items;
  }

  Future<int> fetchWaybill() async {
    await Future.delayed(const Duration(milliseconds: 500));
    int waybillId = 17;

    return waybillId;
  }

  @override
  Future<bool> confirmBunker({required ListSiloItemModel silo}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return true;
  }

  @override
  Future<GeneralInfoInnerModel> fetchGeneralInfo() async {
    await Future.delayed(const Duration(milliseconds: 500));

    // const mockResponse = '''
    // {
    //   "tasks": [

    //   ],
    //   "stats": [

    //   ],
    //   "amounts": {
    //     "is_done_amount": 0,
    //     "total_amount": 103919
    //   },
    //   "farm": "ОПФ: Дільниця вирощування № 01"
    // }
    // ''';
    const mockResponse = '''
    {
      "tasks": [
        {
          "truck_number": 1,
          "total": 6,
          "is_done": 1
        },
        {
          "truck_number": 2,
          "total": 4,
          "is_done": 1
        }
      ],
      "stats": [
        {
          "sign": "КА0101АА",
          "is_done_amount": 11801,
          "total_amount": 11801
        },
        {
          "sign": "КА0123АА",
          "is_done_amount": 53333,
          "total_amount": 53333
        }
      ],
      "amounts": {
        "is_done_amount": 11801,
        "total_amount": 103919
      },
      "farm": "ОПФ: Дільниця вирощування № 01"
    }
    ''';

    final data = jsonDecode(mockResponse) as Map<String, dynamic>;
    return GeneralInfoInnerModel.fromJson(data);
  }

  @override
  Future<List<TaskModel>> getTaskList({required int truckNumber}) async {
    await Future.delayed(const Duration(milliseconds: 500));

    const mockResponse = '''
  {
    "items": [
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 08",
        "house_id": 167,
        "task_id": 130,
        "amount": 4828.0,
        "sequence_number": 1,
        "is_locked": false,
        "is_done": false
      },
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 09",
        "house_id": 300,
        "task_id": 131,
        "amount": 3980.0,
        "sequence_number": 2,
        "is_locked": false,
        "is_done": false
      },
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 10",
        "house_id": 301,
        "task_id": 132,
        "amount": 2777.0,
        "sequence_number": 3,
        "is_locked": false,
        "is_done": false
      },
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 11",
        "house_id": 302,
        "task_id": 133,
        "amount": 5693.0,
        "sequence_number": 4,
        "is_locked": true,
        "is_done": true
      },
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 11",
        "house_id": 302,
        "task_id": 133,
        "amount": 5693.0,
        "sequence_number": 5,
        "is_locked": false,
        "is_done": true
      },
      {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 11",
        "house_id": 302,
        "task_id": 133,
        "amount": 5693.0,
        "sequence_number": 6,
        "is_locked": true,
        "is_done": false
      }
    ]
  }
  ''';

    final data = jsonDecode(mockResponse) as Map<String, dynamic>;
    final items = (data['items'] as List<dynamic>)
        .map((item) => TaskModel.fromJson(item as Map<String, dynamic>))
        .toList();

    return items;
  }

  @override
  Future<DetailTaskModel> getDetailTask({
    required int truckNumber,
    required int taskId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    const mockResponse = '''
  {
    "items": {
        "feed": "старт, фініш, експеремент",
        "house_name": "Пташник 08",
        "house_id": 167,
        "task_id": 130,
        "amount": 4828.0,
        "silos": [
            {
                "farm_id": 185,
                "code": "S001",
                "name": "Бункер 1",
                "storage_amount": 11206.6,
                "feed": "Повнораціонний корм для курчат-бройлерів ріст (Г)",
                "id": 258,
                "silo_type": null,
                "last_updated": "2024-12-06T10:40:43.154716+00:00",
                "good_id": 10000818
            },
            {
                "farm_id": 185,
                "code": "S001",
                "name": "Бункер 2",
                "storage_amount": 22175.8,
                "feed": "Повнораціонний корм для курчат-бройлерів ріст (Г)",
                "id": 259,
                "silo_type": null,
                "last_updated": "2024-12-06T10:40:43.160374+00:00",
                "good_id": 10000818
            },
            {
                "farm_id": 185,
                "code": "S001",
                "name": "Бункер 3",
                "storage_amount": 12831.0,
                "feed": "Повнораціонний корм для курчат-бройлерів ріст (Г)",
                "id": 260,
                "silo_type": null,
                "last_updated": "2024-12-06T10:40:43.166017+00:00",
                "good_id": 10000818
            }
        ]
    }
  }
  ''';

    final data = jsonDecode(mockResponse) as Map<String, dynamic>;
    final items = data['items'] as Map<String, dynamic>;

    return DetailTaskModel.fromJson(items);
  }

  @override
  Future<bool> confirmLoad({
    required int taskId,
    required int siloId,
  }) async {
    return true;
  }

  @override
  Future<int?> getWayBillID({required String barcode}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return 1;
  }
}
