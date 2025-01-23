import 'package:delivery/data/data_source/api_data_source.dart';
import 'package:delivery/data/data_source/auth_data_source.dart';
import 'package:delivery/data/models/auth_model/auth_model.dart';
import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/data/models/task_model/task_model.dart';
import 'package:delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiDataSourceImpl implements ApiDataSource {
  final Dio dio;
  final ErrorHandler errorHandler;
  final AuthDataSource authDataSource;

  ApiDataSourceImpl({
    required this.dio,
    required this.errorHandler,
    required this.authDataSource,
    required String api,
  }) {
    // dio.interceptors.add(AuthInterceptor(authDataSource, dio, api));
    // dio.options
    //   ..baseUrl = api
    //   ..headers['Content-Type'] = 'application/json';
  }

  Future<Response> _makeRequest(
      Future<Response> Function() requestFunction) async {
    try {
      final response = await requestFunction();
      if (kDebugMode) {
        print(' _makeRequest response.statusCode ${response.statusCode}');
      }
      if (response.statusCode != 200 && response.statusCode != 201) {
        errorHandler.handleStatusCode(response.statusCode);
        throw Exception('Request failed with status: ${response.statusCode}');
      }
      return response;
    } catch (e) {
      errorHandler.handleException(e as Exception);
      throw Exception('Error making request');
    }
  }

  @override
  Future<bool> confirmBunker({required ListSiloItemModel silo}) {
    // TODO: implement confirmBunker
    throw UnimplementedError();
  }

  @override
  Future<bool> confirmLoad({required int taskId, required int siloId}) {
    // TODO: implement confirmLoad
    throw UnimplementedError();
  }

  @override
  Future<GeneralInfoInnerModel> fetchGeneralInfo() {
    // TODO: implement fetchGeneralInfo
    throw UnimplementedError();
  }

  @override
  Future<List<ListSiloItemModel>> fetchSilos({required int waybillId}) {
    // TODO: implement fetchSilos
    throw UnimplementedError();
  }

  @override
  Future<DetailTaskModel> getDetailTask(
      {required int truckNumber, required int taskId}) {
    // TODO: implement getDetailTask
    throw UnimplementedError();
  }

  @override
  Future<List<TaskModel>> getTaskList({required int truckNumber}) {
    // TODO: implement getTaskList
    throw UnimplementedError();
  }

  @override
  Future<int?> getWayBillID({required String barcode}) {
    // TODO: implement getWayBillID
    throw UnimplementedError();
  }

  @override
  Future<AuthModel?> login(
      {required String carNumber, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
