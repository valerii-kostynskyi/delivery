import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(const ScanState.initial()) {
    on<StartScan>(_onStartScan);
    on<RetryScan>(_onRetryScan);
  }

  Future<void> _onStartScan(StartScan event, Emitter<ScanState> emit) async {
    emit(const ScanState.loading());

    try {
      final scannedValue = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );

      if (scannedValue == '-1' || scannedValue.isEmpty) {
        emit(const ScanState.error(
            "Сканування було скасовано або невірний код"));
      } else {
        emit(ScanState.success(scannedValue));
      }
    } catch (_) {
      emit(const ScanState.error("Помилка під час сканування"));
    }
  }

  void _onRetryScan(RetryScan event, Emitter<ScanState> emit) {
    add(const StartScan());
  }
}
