import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/data/models/track_wraper/track_wraper.dart';
import 'package:delivery/data/models/waybill_details/waybill_details.dart';
import 'package:delivery/presentation/pages/general_info/general_info_page.dart';
import 'package:delivery/presentation/pages/login/login_page.dart';
import 'package:delivery/presentation/pages/detail_silo_page/detail_silo_page.dart';
import 'package:delivery/presentation/pages/detail_task_page/detail_task_page.dart';
import 'package:delivery/presentation/pages/list_silo/list_silo_page.dart';
import 'package:delivery/presentation/pages/scaner/scan_page.dart';
import 'package:delivery/presentation/pages/splash/splash_page.dart';
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
      builder: (context, state) {
        final waybillDetails = state.extra as WaybillDetails;
        return ListSiloPage(
          waybillId: waybillDetails.waybillId,
          barcode: waybillDetails.barcode,
        );
      },
    ),
    GoRoute(
      path: '/general-info-page',
      builder: (context, state) {
        return const GeneralInfoPage();
      },
    ),
    GoRoute(
      path: '/task-list-page',
      builder: (context, state) {
        final trackNumber = state.extra as int;
        return TaskListPage(trackNumber: trackNumber);
      },
    ),
    GoRoute(
      path: '/splash-page',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: '/scaning-page',
      builder: (context, state) => const ScanPage(),
    ),
    GoRoute(
      path: '/detail-silo-page',
      builder: (context, state) {
        final item = state.extra as ListSiloItemModel;
        return DetailSiloPage(item: item);
      },
    ),
    GoRoute(
      path: '/detail-task-page',
      builder: (context, state) {
        final TrackWraper item = state.extra as TrackWraper;
        return DetailTaskPage(trackItem: item);
      },
    ),
  ],
);
