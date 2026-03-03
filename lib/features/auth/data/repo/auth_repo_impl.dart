import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';
import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';
import 'package:shajara_tech/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepoImpl({required this.remoteDataSource, required this.localDataSource});
  @override
  Future<Either<Failure, SignUpEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final user = await remoteDataSource.signUp(
        name,
        email,
        password,
        confirmPassword,
      );
      return Right(user);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> login({
    required String email,
    required String password,
  }) async {
    try {
      await remoteDataSource.login(email, password);

      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await remoteDataSource.logout();
      await localDataSource.clearToken();
      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, LoginEntity>> checkLoginOtpCode({
    required String email,
    required String code,
  }) async {
    try {
      final user = await remoteDataSource.checkResetOtpCode(
        email: email,
        code: code,
      );
      await localDataSource.saveToken(user.userToken);
      await localDataSource.saveUserId(user.id);
      print('user token: ${user.userToken}');
      print('user id: ${user.id}');
      return Right(user);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> reSendLoginOtpCode({
    required String email,
  }) async {
    try {
      await remoteDataSource.reSendOtpCode(email: email);
      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
