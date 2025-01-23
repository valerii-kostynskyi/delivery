import 'package:delivery/data/models/track_wraper/track_wraper.dart';
import 'package:delivery/presentation/blocks/detail_task/detail_task_bloc.dart';
import 'package:delivery/presentation/pages/detail_task_page/widget/detail_task_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTaskPage extends StatelessWidget {
  final TrackWraper trackItem;
  const DetailTaskPage({super.key, required this.trackItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailTaskBloc()
        ..add(DetailTaskEvent.loadDetailTask(trackItem: trackItem)),
      child: const DetailTaskView(),
    );
  }
}
