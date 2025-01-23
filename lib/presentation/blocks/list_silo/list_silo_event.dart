part of 'list_silo_bloc.dart';

@freezed
class ListSiloEvent with _$ListSiloEvent {
  const factory ListSiloEvent.loadSilos({required int waybillId}) = LoadSilos;
}
