import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<Submit>(_onSubmit);
  }

  Future<void> _onSubmit(Submit event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    await Future.delayed(const Duration(seconds: 1));

    if (event.carNumber.length < 8) {
      emit(const LoginState.error());
    } else {
      emit(const LoginState.success());
    }
  }
}
