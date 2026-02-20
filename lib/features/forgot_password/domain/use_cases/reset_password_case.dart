import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/forgot_password/domain/repo/forgot_password_repo.dart';

class ResetPasswordCase {
  final ForgotPasswordRepo otpRepo;

  ResetPasswordCase({required this.otpRepo});
  Future<Either<Failure, Unit>> call({
    required String email,
    required String otpCode,
    required String newPassword,
    required String confirmNewPassword,
  }) {
    return otpRepo.resetPassword(
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
      email: email,
      otpCode: otpCode,
    );
  }
}
