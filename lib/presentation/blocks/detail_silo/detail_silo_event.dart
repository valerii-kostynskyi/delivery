part of 'detail_silo_bloc.dart';

@freezed
class DetailSiloEvent with _$DetailSiloEvent {
  const factory DetailSiloEvent.confirmCompletion() = ConfirmCompletion;
}
