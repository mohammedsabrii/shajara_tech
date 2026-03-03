import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';
import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, SignUpEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<Failure, Unit>> login({
    required String email,
    required String password,
  });
  Future<Either<Failure, Unit>> reSendLoginOtpCode({required String email});
  Future<Either<Failure, LoginEntity>> checkLoginOtpCode({
    required String email,
    required String code,
  });
  Future<Either<Failure, Unit>> logout();
}
