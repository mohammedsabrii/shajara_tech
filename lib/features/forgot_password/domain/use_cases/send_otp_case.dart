import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/forgot_password/domain/repo/forgot_password_repo.dart';

class SendOtpCase {
  final ForgotPasswordRepo otpRepo;

  SendOtpCase({required this.otpRepo});
  Future<Either<Failure, Unit>> call({required String email}) {
    return otpRepo.sendOtpCode(email: email);
  }
}
