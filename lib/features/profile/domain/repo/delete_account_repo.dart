import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

abstract class DeleteAccountRepo {
  Future<Either<Failure, Unit>> confirmPasswordToDeleteAccount({
    required String password,
  });
  Future<Either<Failure, Unit>> deleteAccount();
}
