part of 'farm_info_bloc.dart';

@freezed
class FarmInfoState with _$FarmInfoState {
  const factory FarmInfoState.initial() = FarmInfoInitial;
  const factory FarmInfoState.loading() = FarmInfoLoading;
  const factory FarmInfoState.success({
    required GeneralInfoInnerModel generalInfo,
    required String carNumber,
  }) = FarmInfoSuccess;
  const factory FarmInfoState.error({
    required String errorMessage,
    required String carNumber,
  }) = FarmInfoError;
  const factory FarmInfoState.logoutSuccess() = LogoutSuccess;
}
