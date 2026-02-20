import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  final LoginUseCase loginUseCase;
  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    final data = await loginUseCase.call(email: email, password: password);
    data.fold(
      (failure) => emit(LoginFailure(errorMessage: failure.message)),
      (response) => emit(LoginSuccess(loginEntity: response)),
    );
  }
}
