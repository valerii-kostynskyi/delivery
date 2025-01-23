import 'package:delivery/data/models/task_model/task_model.dart';
import 'package:delivery/domain/inner_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  final InnerRepository innerRepository = GetIt.instance<InnerRepository>();

  TaskListBloc() : super(const TaskListState.initial()) {
    on<LoadTaskList>(_onLoadTaskList);
  }

  Future<void> _onLoadTaskList(
    LoadTaskList event,
    Emitter<TaskListState> emit,
  ) async {
    emit(const TaskListState.loading());
    try {
      final List<TaskModel> tasks =
          await innerRepository.getTaskList(truckNumber: event.trackNumber);
      final sortedTasks = [...tasks]..sort((a, b) {
          if (a.isDone == b.isDone) {
            return a.sequenceNumber.compareTo(b.sequenceNumber);
          }
          return a.isDone ? -1 : 1;
        });
      sortedTasks.reversed;
      emit(
        TaskListState.success(
          taskList: sortedTasks,
          trackNumber: event.trackNumber,
        ),
      );
    } catch (e) {
      emit(const TaskListState.error(errorMessage: 'Failed to load tasks'));
    }
  }
}
