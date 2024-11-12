part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState.initial() = Initial;
  const factory ScanState.loading() = Loading;
  const factory ScanState.success(String scannedValue) = Success;
  const factory ScanState.error(String message) = Error;
}
