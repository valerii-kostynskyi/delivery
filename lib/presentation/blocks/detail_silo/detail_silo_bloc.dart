import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_silo_event.dart';
part 'detail_silo_state.dart';
part 'detail_silo_bloc.freezed.dart';

class DetailSiloBloc extends Bloc<DetailSiloEvent, DetailSiloState> {
  DetailSiloBloc() : super(const DetailSiloState.initial()) {
    on<ConfirmCompletion>(_onConfirmCompletion);
  }

  Future<void> _onConfirmCompletion(
      ConfirmCompletion event, Emitter<DetailSiloState> emit) async {
    emit(const DetailSiloState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const DetailSiloState.completed());
  }
}
