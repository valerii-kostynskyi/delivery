part of 'detail_silo_bloc.dart';

@freezed
class DetailSiloState with _$DetailSiloState {
  const factory DetailSiloState.initial() = Initial;
  const factory DetailSiloState.loading() = Loading;
  const factory DetailSiloState.completed() = Completed;
}
