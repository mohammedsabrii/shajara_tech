import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

abstract class ForgotPasswordRepo {
  Future<Either<Failure, Unit>> sendOtpCode({required String email});
  Future<Either<Failure, Unit>> checkResetCode({
    required String email,
    required String code,
  });
  Future<Either<Failure, Unit>> resetPassword({
    required String email,
    required String otpCode,
    required String newPassword,
    required String confirmNewPassword,
  });
}
