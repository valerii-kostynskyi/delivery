part of 'list_silo_bloc.dart';

@freezed
class ListSiloEvent with _$ListSiloEvent {
  const factory ListSiloEvent.selectSilo(ListSiloItemModel silo) = SelectSilo;
  const factory ListSiloEvent.completeTask() = CompleteTask;
}
