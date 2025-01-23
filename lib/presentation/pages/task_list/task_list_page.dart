import 'package:delivery/presentation/blocks/task_list/task_list_bloc.dart';
import 'package:delivery/presentation/pages/task_list/widget/task_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskListPage extends StatelessWidget {
  final int trackNumber;

  const TaskListPage({
    super.key,
    required this.trackNumber,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskListBloc()
        ..add(TaskListEvent.loadTaskList(trackNumber: trackNumber)),
      child: TaskListView(trackNumber: trackNumber),
    );
  }
}
