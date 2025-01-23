part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState.initial() = Initial;
  const factory ScanState.loading() = Loading;
  const factory ScanState.success(
      {required int waybillId, required String barcode}) = Success;
  const factory ScanState.error(String message) = Error;
  const factory ScanState.initialWithCarNumber(String carNumber) =
      InitialWithCarNumber;
  const factory ScanState.logoutSuccess() = LogoutSuccess;
  const factory ScanState.errorWithWidget({
    required String ttnNumber,
    required bool isTimeOutError,
  }) = _ErrorWithWidget;
}
