part of 'list_silo_bloc.dart';

@freezed
class ListSiloState with _$ListSiloState {
  const factory ListSiloState.initial() = Initial;
  const factory ListSiloState.selectedSilo(ListSiloItemModel selectedSilo) =
      SelectedSilo;
  const factory ListSiloState.taskCompleted() = TaskCompleted;
}
