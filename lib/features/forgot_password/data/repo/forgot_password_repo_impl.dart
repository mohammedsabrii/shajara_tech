import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/forgot_password/data/data_source/forgot_password_remote_data_source.dart';
import 'package:shajara_tech/features/forgot_password/domain/repo/forgot_password_repo.dart';

class ForgotPasswordRepoImpl implements ForgotPasswordRepo {
  final ForgotPasswordRemoteDataSource remoteDataSource;

  ForgotPasswordRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, Unit>> checkResetCode({
    required String email,
    required String code,
  }) async {
    try {
      await remoteDataSource.checkResetCode(email: email, code: code);
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetPassword({
    required String email,
    required String otpCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    try {
      await remoteDataSource.resetPassword(
        email: email,
        otpCode: otpCode,
        newPassword: newPassword,
        confirmNewPassword: confirmNewPassword,
      );
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendOtpCode({required String email}) async {
    try {
      await remoteDataSource.sendOtpCode(email: email);
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
