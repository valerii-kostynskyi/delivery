part of 'detail_task_bloc.dart';

@freezed
class DetailTaskState with _$DetailTaskState {
  const factory DetailTaskState.initial() = Initial;
  const factory DetailTaskState.loading() = Loading;
  const factory DetailTaskState.success({required DetailTaskModel detailTask}) =
      Success;
  const factory DetailTaskState.error({required String errorMessage}) = Error;
  const factory DetailTaskState.completed() = _Completed;
}
