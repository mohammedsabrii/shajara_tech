import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class LoginUseCase {
  final AuthRepo authRepo;

  LoginUseCase({required this.authRepo});
  Future<Either<Failure, Unit>> call({
    required String email,
    required String password,
  }) {
    return authRepo.login(email: email, password: password);
  }
}
