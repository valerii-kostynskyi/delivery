import 'dart:async';

import 'package:delivery/domain/auth_repositoy.dart';
import 'package:delivery/domain/silo_repository.dart';
import 'package:delivery/presentation/utility/error_handler/exception/validation_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

class ScanBloc extends Bloc<ScanEvent, ScanState> {
  final AuthRepository authRepository = GetIt.instance<AuthRepository>();
  final SiloRepository siloRepository = GetIt.instance<SiloRepository>();
  ScanBloc() : super(const ScanState.initial()) {
    on<InitializeCarNumber>(_onInitializeCarNumber);
    on<StartScan>(_onStartScan);
    on<RetryScan>(_onRetryScan);
    on<Logout>(_onLogout);
    add(const InitializeCarNumber());
  }

  Future<void> _onInitializeCarNumber(
      InitializeCarNumber event, Emitter<ScanState> emit) async {
    try {
      final carNumber = await authRepository.getCarNumber();
      if (carNumber.isNotEmpty) {
        emit(ScanState.initialWithCarNumber(carNumber));
      } else {
        emit(const ScanState.error('Номер машини не знайдено'));
      }
    } catch (_) {
      emit(const ScanState.error('Помилка при отриманні номера машини'));
    }
  }

  Future<void> _onStartScan(StartScan event, Emitter<ScanState> emit) async {
    emit(const ScanState.loading());
    String barcode = '';

    try {
      barcode = 'D199N1618200246065';

      final int? waybillId = await siloRepository
          .getWayBillID(barcode: barcode)
          .timeout(const Duration(seconds: 1), onTimeout: () => null);

      if (waybillId != null) {
        emit(ScanState.success(waybillId: waybillId, barcode: barcode));
      } else {
        emit(ScanState.errorWithWidget(
            ttnNumber: barcode, isTimeOutError: false));
      }
    } on ValidationException catch (e) {
      final errorMessage = e.message.values.join(', ');
      emit(ScanState.error("Помилка валідації: $errorMessage"));
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? 'Мережева помилка';
      emit(ScanState.error("Помилка сервера: $errorMessage"));
    } on TimeoutException {
      emit(ScanState.errorWithWidget(ttnNumber: barcode, isTimeOutError: true));
    } catch (e) {
      emit(ScanState.error("Сталася несподівана помилка: ${e.toString()}"));
    }
  }

  void _onRetryScan(RetryScan event, Emitter<ScanState> emit) {
    add(const StartScan());
  }

  Future<void> _onLogout(Logout event, Emitter<ScanState> emit) async {
    emit(const ScanState.loading());
    try {
      await authRepository.logout();
      emit(const ScanState.logoutSuccess());
    } on ValidationException catch (e) {
      final errorMessage = e.message.values.join(', ');
      emit(ScanState.error("Помилка валідації: $errorMessage"));
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? 'Мережева помилка';
      emit(ScanState.error("Помилка сервера: $errorMessage"));
    } catch (e) {
      emit(ScanState.error("Сталася несподівана помилка: ${e.toString()}"));
    }
  }
}


      // final scannedValue = await FlutterBarcodeScanner.scanBarcode(
      //   '#ff6666',
      //   'Cancel',
      //   true,
      //   ScanMode.BARCODE,
      // );

      // if (scannedValue.isEmpty || scannedValue == '-1') {
      //   emit(const ScanState.error(
      //       "Сканування було скасовано або невірний код"));
      //   return;
      // }