import 'package:delivery/domain/inner_repository.dart';
import 'package:delivery/domain/repo_impl/inner_repository_impl.dart';
import 'package:delivery/domain/repo_impl/silo_repository_impl.dart';
import 'package:delivery/domain/silo_repository.dart';
import 'package:delivery/presentation/utility/app_bloc_observer.dart/app_bloc_observer.dart';
import 'package:dio/dio.dart';
import 'package:delivery/data/data_source/api_data_source.dart';
import 'package:delivery/data/data_source/auth_data_source.dart';
import 'package:delivery/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:delivery/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:delivery/data/data_source/ds_impl/mock_data_source_impl.dart';
import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/domain/auth_repositoy.dart';
import 'package:delivery/domain/repo_impl/auth_repositoy_impl.dart';
import 'package:delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:delivery/presentation/utility/error_handler/error_handler_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

Future<void> initApp() async {
  final Dio dio = Dio();
  Bloc.observer = AppBlocObserver();
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(ErrorHandlerImpl());

  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
      secureStorage: secureStorage,
      dio: dio,
      api: '',
    ),
  );

  final MockDataSource mockDataSource =
      GetIt.instance.registerSingleton<MockDataSource>(MockDataSourceImpl());

  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: '',
    ),
  );

  GetIt.instance.registerSingleton<AuthRepository>(AuthRepositoryImpl(
    authDataSource: authDataSource,
    apiDataSource: apiDataSource,
    mockDataSource: mockDataSource,
  ));

  GetIt.instance.registerSingleton<SiloRepository>(SiloRepositoryImpl(
    apiDataSource: apiDataSource,
    mockDataSource: mockDataSource,
  ));

  GetIt.instance.registerSingleton<InnerRepository>(
    InnerRepositoryImpl(
      apiDataSource: apiDataSource,
      mockDataSource: mockDataSource,
    ),
  );
}
