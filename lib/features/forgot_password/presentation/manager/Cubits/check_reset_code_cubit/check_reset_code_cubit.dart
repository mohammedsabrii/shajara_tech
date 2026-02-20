import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/verify_otp_code.dart';

part 'check_reset_code_state.dart';

class CheckResetCodeCubit extends Cubit<CheckResetCodeState> {
  CheckResetCodeCubit(this.verifyOtpCode) : super(CheckResetCodeInitial());
  final VerifyOtpCode verifyOtpCode;
  Future<void> verifyOtp({
    required String email,
    required String otpCode,
  }) async {
    emit(CheckResetCodeLoading());
    final data = await verifyOtpCode.call(email: email, otpCode: otpCode);
    data.fold(
      (failure) => emit(CheckResetCodeFailure(errorMessage: failure.message)),
      (response) => emit(CheckResetCodeSuccess()),
    );
  }
}
