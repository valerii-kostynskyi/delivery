import 'package:dostavka/presentation/pages/login/login_page.dart';
import 'package:dostavka/presentation/pages/detail_bunker_page/detail_bunker_page.dart';
import 'package:dostavka/presentation/pages/detail_task_page/detail_task_page.dart';
import 'package:dostavka/presentation/pages/list_bunker/list_bunker_page.dart';
import 'package:dostavka/presentation/pages/scaner/scaning_page.dart';
import 'package:dostavka/presentation/pages/splash/splash_page.dart';
import 'package:dostavka/presentation/pages/sector_info/sector_info_page.dart';
import 'package:dostavka/presentation/pages/task_list/task_list_page.dart';
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
        final index = state.pathParameters['index'];
        return DetailBunkerPage(index: int.parse(index!));
      },
    ),
    GoRoute(
      path: '/detail-task-page/:index',
      builder: (context, state) {
        final index = state.pathParameters['index'];
        return DetailTaskPage(index: int.parse(index!));
      },
    ),
  ],
);
