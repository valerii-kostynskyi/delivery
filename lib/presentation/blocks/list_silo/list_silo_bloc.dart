import 'package:delivery/data/models/list_silo_item/list_silo_item_model.dart';
import 'package:delivery/domain/silo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'list_silo_event.dart';
part 'list_silo_state.dart';
part 'list_silo_bloc.freezed.dart';

class ListSiloBloc extends Bloc<ListSiloEvent, ListSiloState> {
  final SiloRepository siloRepository = GetIt.instance<SiloRepository>();

  ListSiloBloc() : super(const ListSiloState.initial()) {
    on<LoadSilos>(_onLoadSilos);
  }

  Future<void> _onLoadSilos(
      LoadSilos event, Emitter<ListSiloState> emit) async {
    emit(const ListSiloState.loading());
    try {
      final silos = await siloRepository.fetchSilos(waybillId: event.waybillId);
      if (silos.isEmpty) {
        emit(const ListSiloState.empty());
      } else {
        emit(ListSiloState.success(silos: silos));
      }
    } catch (e) {
      emit(ListSiloState.error(errorMessage: e.toString()));
    }
  }
}
