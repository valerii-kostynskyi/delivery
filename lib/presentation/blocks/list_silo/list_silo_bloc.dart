import 'package:feed_delivery/presentation/pages/list_silo/list_silo_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_silo_event.dart';
part 'list_silo_state.dart';
part 'list_silo_bloc.freezed.dart';

class ListSiloBloc extends Bloc<ListSiloEvent, ListSiloState> {
  ListSiloBloc() : super(const ListSiloState.initial()) {
    on<SelectSilo>(
        (event, emit) => emit(ListSiloState.selectedSilo(event.silo)));
    on<CompleteTask>(
        (event, emit) => emit(const ListSiloState.taskCompleted()));
  }
}
