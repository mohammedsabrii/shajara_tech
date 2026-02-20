import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/forgot_password/domain/repo/forgot_password_repo.dart';

class VerifyOtpCode {
  final ForgotPasswordRepo otpRepo;

  VerifyOtpCode({required this.otpRepo});
  Future<Either<Failure, Unit>> call({
    required String email,
    required String otpCode,
  }) {
    return otpRepo.checkResetCode(email: email, code: otpCode);
  }
}
