import 'package:dostavka/presentation/pages/auth_page/auth_page.dart';
import 'package:dostavka/presentation/pages/detail_page.dart/detail_page.dart';
import 'package:dostavka/presentation/pages/main_page/main_page.dart';
import 'package:dostavka/presentation/pages/progress_page/progress_page.dart';
import 'package:dostavka/presentation/pages/scaning_page/scaning_page.dart';
import 'package:dostavka/presentation/pages/sector_list/sector_list_page.dart';
import 'package:dostavka/presentation/pages/splash/splash_page.dart';
import 'package:dostavka/presentation/pages/task_list/task_list_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/auth',
  routes: [
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/main-page',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/task-list-page/:index',
      builder: (context, state) {
        final index = state.pathParameters['index'];
        return TaskListPage(index: int.parse(index!));
      },
    ),
    GoRoute(
      path: '/sector-list-page',
      builder: (context, state) => const SectorListPage(),
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
      path: '/progress-page',
      builder: (context, state) => const ProgressPage(),
    ),
    GoRoute(
      path: '/detail-page/:index',
      builder: (context, state) {
        final index = state.pathParameters['index'];
        return DetailPage(index: int.parse(index!));
      },
    ),
  ],
);
