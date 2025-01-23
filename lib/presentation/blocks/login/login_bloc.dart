import 'dart:developer';

import 'package:delivery/domain/auth_repositoy.dart';
import 'package:delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:delivery/presentation/utility/error_handler/exception/validation_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository = GetIt.instance<AuthRepository>();
  final ErrorHandler errorHandler = GetIt.instance<ErrorHandler>();

  LoginBloc() : super(const LoginState.initial()) {
    on<Submit>(_onSubmit);
    on<CheckAuthentication>(_onCheckAuthentication);
  }

  Future<void> _onSubmit(Submit event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    String carNumber = 'КА0202АА'; // driver_outer
    // String carNumber = 'КА0101АА'; // driver_inner
    // String carNumber = 'ВА7777ВА'; // driver_inner
    // String carNumber = 'ВБ4300ВБ'; // driver_inner
    // String carNumber = 'ВБ1000ВБ'; // driver_inner
    try {
      final String? role = await authRepository.login(
        carNumber: carNumber,
        password: '12345678',
      );
      if (role != null) {
        emit(LoginState.success(role));
      } else {
        emit(const LoginState.error('Авторизація не пройшла'));
      }
    } on ValidationException catch (e) {
      errorHandler.handle(e);
      final errorMessage = e.message.values.join(', ');
      emit(LoginState.error('Помилка валідації: $errorMessage'));
    } on Exception catch (e) {
      log('error ${e.toString()}');
      errorHandler.handle(e);
      emit(LoginState.error(e.toString()));
    }
  }

  Future<void> _onCheckAuthentication(
      CheckAuthentication event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    try {
      final bool isAuthenticated = await authRepository.isAuthenticated();
      await Future.delayed(const Duration(seconds: 2));
      if (isAuthenticated) {
        final String role = await authRepository.getRole();

        emit(LoginState.success(role));
      } else {
        emit(const LoginState.login());
      }
    } on ValidationException catch (e) {
      errorHandler.handle(e);
      final errorMessage = e.message.values.join(', ');
      emit(LoginState.error('Помилка валідації: $errorMessage'));
    } on Exception catch (e) {
      errorHandler.handle(e);
      emit(LoginState.error(e.toString()));
    }
  }
}
