import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/sign_up_use_case.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());
  final SignUpUseCase signUpUseCase;
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(SignUpLoading());
    final data = await signUpUseCase.call(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
    data.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.message)),
      (response) => emit(SignUpSuccess(signUpEntity: response)),
    );
  }
}
