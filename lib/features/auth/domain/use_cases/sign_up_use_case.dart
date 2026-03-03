import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});

  Future<Either<Failure, SignUpEntity>> call({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    return authRepo.signUp(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }
}
