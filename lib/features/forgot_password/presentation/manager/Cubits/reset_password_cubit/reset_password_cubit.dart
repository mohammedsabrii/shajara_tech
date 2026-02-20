import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:shajara_tech/features/forgot_password/domain/use_cases/reset_password_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.resetPasswordCase) : super(ResetPasswordInitial());
  final ResetPasswordCase resetPasswordCase;
  Future<void> resetPassword({
    required String email,
    required String otpCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    emit(ResetPasswordLoading());
    final data = await resetPasswordCase.call(
      email: email,
      otpCode: otpCode,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
    data.fold(
      (failure) => emit(ResetPasswordFailure(errorMessage: failure.message)),
      (response) => emit(ResetPasswordSuccess()),
    );
  }
}
