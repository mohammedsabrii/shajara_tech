import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class CheckLoginOtpCodeUseCase {
  final AuthRepo authRepo;

  CheckLoginOtpCodeUseCase({required this.authRepo});
  Future<Either<Failure, LoginEntity>> call({
    required String email,
    required String code,
  }) {
    return authRepo.checkLoginOtpCode(email: email, code: code);
  }
}
