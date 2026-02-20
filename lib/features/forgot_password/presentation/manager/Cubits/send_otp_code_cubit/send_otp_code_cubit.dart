import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/send_otp_case.dart';

part 'send_otp_code_state.dart';

class SendOtpCodeCubit extends Cubit<SendOtpCodeState> {
  SendOtpCodeCubit(this.sendOtpCase) : super(SendOtpCodeInitial());
  final SendOtpCase sendOtpCase;
  Future<void> sendOtp({required String email}) async {
    emit(SendOtpCodeLoading());
    final data = await sendOtpCase.call(email: email);
    data.fold(
      (failure) => emit(SendOtpCodeFailure(errorMessage: failure.message)),
      (response) => emit(SendOtpCodeSuccess()),
    );
  }
}
