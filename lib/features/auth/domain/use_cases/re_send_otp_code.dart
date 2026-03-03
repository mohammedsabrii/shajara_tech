import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class ReSendLoginOtpCodeUseCase {
  final AuthRepo authRepo;

  ReSendLoginOtpCodeUseCase({required this.authRepo});
  Future<Either<Failure, Unit>> call({required String email}) {
    return authRepo.reSendLoginOtpCode(email: email);
  }
}
