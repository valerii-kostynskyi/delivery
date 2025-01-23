import 'package:delivery/data/models/general_inner_info/general_info_inner_model.dart';
import 'package:delivery/domain/auth_repositoy.dart';
import 'package:delivery/domain/inner_repository.dart';
import 'package:delivery/presentation/utility/error_handler/exception/validation_exception.dart';
import 'package:dio/dio.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'farm_info_event.dart';
part 'farm_info_state.dart';
part 'farm_info_bloc.freezed.dart';

class FarmInfoBloc extends Bloc<FarmInfoEvent, FarmInfoState> {
  final InnerRepository innerRepository = GetIt.instance<InnerRepository>();
  final AuthRepository authRepository = GetIt.instance<AuthRepository>();
  FarmInfoBloc() : super(const FarmInfoState.initial()) {
    on<LoadFarmInfo>(_onLoadFarmInfo);
    on<Logout>(_onLogout);
  }
  Future<void> _onLoadFarmInfo(
      LoadFarmInfo event, Emitter<FarmInfoState> emit) async {
    emit(const FarmInfoState.loading());
    try {
      final carNumber = await authRepository.getCarNumber();
      final generalInfo = await innerRepository.fetchGeneralInfo();
      emit(FarmInfoState.success(
        generalInfo: generalInfo,
        carNumber: carNumber,
      ));
    } catch (e) {
      final carNumber = await authRepository.getCarNumber();
      emit(FarmInfoState.error(
        errorMessage: 'Failed to load farm info',
        carNumber: carNumber,
      ));
    }
  }

  Future<void> _onLogout(Logout event, Emitter<FarmInfoState> emit) async {
    emit(const FarmInfoState.loading());
    try {
      await authRepository.logout();
      emit(const FarmInfoState.logoutSuccess());
    } on ValidationException catch (e) {
      final errorMessage = e.message.values.join(', ');
      emit(FarmInfoState.error(
        errorMessage: 'Failed to load farm info $errorMessage',
        carNumber: '',
      ));
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? 'Мережева помилка';
      emit(FarmInfoState.error(
        errorMessage: 'Failed to load farm info $errorMessage',
        carNumber: '',
      ));
    } catch (e) {
      emit(const FarmInfoState.error(
        errorMessage: 'Failed to load farm info',
        carNumber: '',
      ));
    }
  }
}
