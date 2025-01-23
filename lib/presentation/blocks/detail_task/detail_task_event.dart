part of 'detail_task_bloc.dart';

@freezed
class DetailTaskEvent with _$DetailTaskEvent {
  const factory DetailTaskEvent.loadDetailTask({
    required TrackWraper trackItem,
  }) = LoadDetailTask;
  const factory DetailTaskEvent.confirmCompletion({
    required DetailTaskSiloModel selectedSilo,
    required int taskId,
  }) = ConfirmCompletion;
}
