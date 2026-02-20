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
  Future<Either<Failure, LoginEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final user = await remoteDataSource.login(email, password);
      await localDataSource.saveToken(user.userToken);
      return Right(user);
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
}
