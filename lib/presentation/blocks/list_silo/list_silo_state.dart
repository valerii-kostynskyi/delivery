part of 'list_silo_bloc.dart';

@freezed
class ListSiloState with _$ListSiloState {
  const factory ListSiloState({
    @Default(ListSiloStatus.initial) ListSiloStatus status,
    @Default([]) List<ListSiloItemModel> silos,
    String? errorMessage,
  }) = _ListSiloState;
}

enum ListSiloStatus { initial, loading, success, error, empty }
