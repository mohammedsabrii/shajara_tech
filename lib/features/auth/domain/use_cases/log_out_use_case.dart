import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class LogOutUseCase {
  final AuthRepo authRepo;

  LogOutUseCase({required this.authRepo});
  Future<Either<Failure, Unit>> call() {
    return authRepo.logout();
  }
}
