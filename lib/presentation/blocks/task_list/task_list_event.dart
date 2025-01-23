part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.loadTaskList({required int trackNumber}) =
      LoadTaskList;
}
