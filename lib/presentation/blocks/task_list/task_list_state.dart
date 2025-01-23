part of 'task_list_bloc.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState.initial() = TaskListInitial;
  const factory TaskListState.loading() = TaskListLoading;
  const factory TaskListState.success({
    required List<TaskModel> taskList,
    required int trackNumber,
  }) = TaskListSuccess;
  const factory TaskListState.error({required String errorMessage}) =
      TaskListError;
}
