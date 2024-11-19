part of 'list_silo_bloc.dart';

@freezed
class ListSiloEvent with _$ListSiloEvent {
  const factory ListSiloEvent.loadSilos() = LoadSilosEvent;
  const factory ListSiloEvent.selectSilo(ListSiloItemModel silo) =
      SelectSiloEvent;
  const factory ListSiloEvent.completeTask() = CompleteTaskEvent;
}
