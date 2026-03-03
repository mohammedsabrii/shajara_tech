import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/check_reset_otp_code_use_case.dart';

part 'check_login_otp_code_state.dart';

class CheckLoginOtpCodeCubit extends Cubit<CheckLoginOtpCodeState> {
  CheckLoginOtpCodeCubit(this.checkLoginOtpCodeUseCase)
    : super(CheckLoginOtpCodeInitial());
  final CheckLoginOtpCodeUseCase checkLoginOtpCodeUseCase;
  Future<void> checkLoginOtpCode({
    required String email,
    required String code,
  }) async {
    emit(CheckLoginOtpCodeLoading());
    final result = await checkLoginOtpCodeUseCase(email: email, code: code);
    result.fold(
      (failure) =>
          emit(CheckLoginOtpCodeFailure(errorMessage: failure.message)),
      (success) => emit(CheckLoginOtpCodeSuccess(loginEntity: success)),
    );
  }
}
