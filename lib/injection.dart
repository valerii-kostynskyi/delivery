import 'package:dio/dio.dart';
import 'package:feed_delivery/data/data_source/api_data_source.dart';
import 'package:feed_delivery/data/data_source/auth_data_source.dart';
import 'package:feed_delivery/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:feed_delivery/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler_impl.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

Future<void> initApp() async {
  final Dio dio = Dio();
  // final HiveService hiveService = HiveService();
  // await hiveService.init();

  // Initialize secure storage
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  // Initialize Flutter Downloader
  // await FlutterDownloader.initialize();

  // Register ErrorHandler in GetIt
  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(ErrorHandlerImpl());

  // Register AuthDataSource with dependencies in GetIt
  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
      secureStorage: secureStorage,
    ),
  );

  // // Register ApiDataSource with dependencies in GetIt
  // ignore: unused_local_variable
  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: 'https://dev.tms-master.com/driver-api/v1',
    ),
  );

  // // Register TrackingRepository with locationService and foregroundService
  // GetIt.instance.registerSingleton<TrackingRepository>(TrackingRepositoryImpl(
  //   locationService: locationService,
  // ));

  // // Register UserRepository with dependencies in GetIt
  // GetIt.instance.registerSingleton<UserRepository>(
  //   UserRepositoryImpl(
  //     apiDataSource: apiDataSource,
  //     hiveService: hiveService,
  //     connectivityService: connectivityService,
  //   ),
  // );

  // // Register TripRepository with apiDataSource in GetIt
  // GetIt.instance.registerSingleton<TripRepository>(
  //   TripRepositoryImpl(
  //     apiDataSource: apiDataSource,
  //   ),
  // );

  // // Register MessagesRepository with dependencies in GetIt
  // GetIt.instance.registerSingleton<MessagesRepository>(
  //   MessagesRepositoryImpl(
  //     apiDataSource: apiDataSource,
  //     hiveService: hiveService,
  //     connectivityService: connectivityService,
  //   ),
  // );

  // // Register AuthRepository with dependencies in GetIt
  // GetIt.instance.registerSingleton<AuthRepository>(
  //   AuthRepositoryImpl(
  //     apiDataSource: apiDataSource,
  //     authDataSource: authDataSource,
  //   ),
  // );

  // // Register NotificationRepository with apiDataSource in GetIt
  // GetIt.instance.registerSingleton<NotificationRepository>(
  //   NotificationRepositoryImpl(apiDataSource: apiDataSource),
  // );
}
