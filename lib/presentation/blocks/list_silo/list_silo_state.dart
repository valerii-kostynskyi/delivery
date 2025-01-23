part of 'list_silo_bloc.dart';

@freezed
class ListSiloState with _$ListSiloState {
  const factory ListSiloState.initial() = ListSiloInitial;
  const factory ListSiloState.loading() = ListSiloLoading;
  const factory ListSiloState.success({
    required List<ListSiloItemModel> silos,
  }) = ListSiloSuccess;
  const factory ListSiloState.error({
    required String errorMessage,
  }) = ListSiloError;
  const factory ListSiloState.empty() = ListSiloEmpty;
}
