import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/data/models/list_silo_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'list_silo_event.dart';
part 'list_silo_state.dart';
part 'list_silo_bloc.freezed.dart';

class ListSiloBloc extends Bloc<ListSiloEvent, ListSiloState> {
  final MockDataSource dataSource = GetIt.instance<MockDataSource>();

  ListSiloBloc() : super(const ListSiloState()) {
    on<LoadSilosEvent>(_onLoadSilos);
    on<SelectSiloEvent>(_onSelectSilo);
    on<CompleteTaskEvent>(_onCompleteTask);
  }

  Future<void> _onLoadSilos(
      LoadSilosEvent event, Emitter<ListSiloState> emit) async {
    emit(state.copyWith(status: ListSiloStatus.loading));
    try {
      final silos = await dataSource.fetchSilos();
      if (silos.isEmpty) {
        emit(state.copyWith(status: ListSiloStatus.empty));
      } else {
        emit(
          state.copyWith(status: ListSiloStatus.success, silos: silos),
        );
      }
    } catch (e) {
      emit(state.copyWith(
          status: ListSiloStatus.error, errorMessage: e.toString()));
    }
  }

  void _onSelectSilo(SelectSiloEvent event, Emitter<ListSiloState> emit) {
    // emit(state.copyWith(selectedSilo: event.silo));
  }

  Future<void> _onCompleteTask(
      CompleteTaskEvent event, Emitter<ListSiloState> emit) async {
    emit(state.copyWith(status: ListSiloStatus.loading));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(status: ListSiloStatus.success));
  }
}
