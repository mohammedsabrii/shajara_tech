import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/re_send_otp_code.dart';

part 're_send_login_otp_code_state.dart';

class ReSendLoginOtpCodeCubit extends Cubit<ReSendLoginOtpCodeState> {
  ReSendLoginOtpCodeCubit(this.reSendLoginOtpCodeUseCase)
    : super(ReSendLoginOtpCodeInitial());
  final ReSendLoginOtpCodeUseCase reSendLoginOtpCodeUseCase;
  Future<void> reSendLoginOtpCode({required String email}) async {
    emit(ReSendLoginOtpCodeLoading());
    final result = await reSendLoginOtpCodeUseCase(email: email);
    result.fold(
      (failure) =>
          emit(ReSendLoginOtpCodeFailure(errorMessage: failure.message)),
      (success) => emit(ReSendLoginOtpCodeSuccess()),
    );
  }
}
