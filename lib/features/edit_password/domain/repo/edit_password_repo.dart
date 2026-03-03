import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

abstract class EditPasswordRepo {
  Future<Either<Failure, Unit>> editPassword({
    required String newPassword,
    required String confirmNewPassword,
  });
}
