import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/domain/silo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'detail_silo_event.dart';
part 'detail_silo_state.dart';
part 'detail_silo_bloc.freezed.dart';

class DetailSiloBloc extends Bloc<DetailSiloEvent, DetailSiloState> {
  final SiloRepository siloRepository = GetIt.instance<SiloRepository>();

  DetailSiloBloc() : super(const DetailSiloState.initial()) {
    on<ConfirmCompletion>(_onConfirmCompletion);
  }

  Future<void> _onConfirmCompletion(
      ConfirmCompletion event, Emitter<DetailSiloState> emit) async {
    emit(const DetailSiloState.loading());
    try {
      final isSuccess = await siloRepository.confirmBunker(silo: event.item);
      if (isSuccess) {
        emit(const DetailSiloState.completed());
      } else {
        emit(const DetailSiloState.error(
            errorMessage: 'Помилка підтвердження виконання завдання.'));
      }
    } catch (e) {
      emit(DetailSiloState.error(
          errorMessage: 'Сталася помилка: ${e.toString()}'));
    }
  }
}
