import 'package:delivery/data/models/list_silo_item_model.dart';
import 'package:delivery/data/models/task_list_item_model.dart';
import 'package:delivery/presentation/pages/login/login_page.dart';
import 'package:delivery/presentation/pages/detail_silo_page/detail_silo_page.dart';
import 'package:delivery/presentation/pages/detail_task_page/detail_task_page.dart';
import 'package:delivery/presentation/pages/list_silo/list_silo_page.dart';
import 'package:delivery/presentation/pages/scaner/scaning_page.dart';
import 'package:delivery/presentation/pages/splash/splash_page.dart';
import 'package:delivery/presentation/pages/farm_info/farm_info_page.dart';
import 'package:delivery/presentation/pages/task_list/task_list_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/list-silo-page',
      builder: (context, state) => const ListSiloPage(),
    ),
    GoRoute(
      path: '/farm-info-page',
      builder: (context, state) => const FarmInfoPage(),
    ),
    GoRoute(
      path: '/task-list-page/:index',
      builder: (context, state) {
        final index = state.pathParameters['index'];
        return TaskListPage(taskNumber: int.parse(index!));
      },
    ),
    GoRoute(
      path: '/splash-page',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: '/scaning-page',
      builder: (context, state) => const ScaningPage(),
    ),
    GoRoute(
      path: '/detail-silo-page/:index',
      builder: (context, state) {
        final item = state.extra;
        return DetailSiloPage(
          item: item as ListSiloItemModel,
        );
      },
    ),
    GoRoute(
      path: '/detail-task-page/:index',
      builder: (context, state) {
        final TaskListItemModel item = state.extra as TaskListItemModel;
        return DetailTaskPage(item: item);
      },
    ),
  ],
);
