part of 'farm_info_bloc.dart';

@freezed
class FarmInfoEvent with _$FarmInfoEvent {
  const factory FarmInfoEvent.loadFarmInfo() = LoadFarmInfo;
  const factory FarmInfoEvent.logout() = Logout;
}
