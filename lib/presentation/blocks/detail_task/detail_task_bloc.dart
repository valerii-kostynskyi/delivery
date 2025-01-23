import 'package:delivery/data/models/detail_task_model/detail_task_model.dart';
import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:delivery/data/models/track_wraper/track_wraper.dart';
import 'package:delivery/domain/inner_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'detail_task_event.dart';
part 'detail_task_state.dart';
part 'detail_task_bloc.freezed.dart';

class DetailTaskBloc extends Bloc<DetailTaskEvent, DetailTaskState> {
  final InnerRepository innerRepository = GetIt.instance<InnerRepository>();

  DetailTaskBloc() : super(const DetailTaskState.initial()) {
    on<LoadDetailTask>(_onLoadDetailTask);
    on<ConfirmCompletion>(_onConfirmCompletion);
  }

  Future<void> _onLoadDetailTask(
    LoadDetailTask event,
    Emitter<DetailTaskState> emit,
  ) async {
    emit(const DetailTaskState.loading());
    try {
      final detailTask = await innerRepository.getDetailTask(
        truckNumber: event.trackItem.trackNumber,
        taskId: event.trackItem.task.taskId,
      );

      emit(DetailTaskState.success(detailTask: detailTask));
    } catch (e) {
      emit(DetailTaskState.error(errorMessage: e.toString()));
    }
  }

  Future<void> _onConfirmCompletion(
      ConfirmCompletion event, Emitter<DetailTaskState> emit) async {
    emit(const DetailTaskState.loading());
    try {
      final result = await innerRepository.confirmLoad(
        taskId: event.taskId,
        siloID: event.selectedSilo.id,
      );

      if (result) {
        emit(const DetailTaskState.completed());
      } else {
        emit(const DetailTaskState.error(
            errorMessage: 'Підтвердження не вдалося'));
      }
    } catch (e) {
      emit(DetailTaskState.error(errorMessage: e.toString()));
    }
  }
}
