import 'package:feed_delivery/presentation/pages/login/login_page.dart';
import 'package:feed_delivery/presentation/pages/detail_bunker_page/detail_bunker_page.dart';
import 'package:feed_delivery/presentation/pages/detail_task_page/detail_task_page.dart';
import 'package:feed_delivery/presentation/pages/list_bunker/list_bunker_page.dart';
import 'package:feed_delivery/presentation/pages/scaner/scaning_page.dart';
import 'package:feed_delivery/presentation/pages/splash/splash_page.dart';
import 'package:feed_delivery/presentation/pages/sector_info/sector_info_page.dart';
import 'package:feed_delivery/presentation/pages/task_list/task_list_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/list-bunker-page',
      builder: (context, state) => const ListBunkerPage(),
    ),
    GoRoute(
      path: '/sector-info-page',
      builder: (context, state) => const SectorInfoPage(),
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
      path: '/detail-bunker-page/:index',
      builder: (context, state) {
        final item = state.extra;
        return DetailBunkerPage(
          item: item as ListBunkerItemModel,
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
