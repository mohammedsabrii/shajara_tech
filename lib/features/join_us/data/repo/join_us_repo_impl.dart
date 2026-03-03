import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:shajara_tech/features/join_us/data/data_source/join_us_remote_data_source.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';

class JoinUsRepoImpl implements JoinUsRepo {
  final JoinUsRemoteDataSource joinUsRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  JoinUsRepoImpl({
    required this.joinUsRemoteDataSource,
    required this.authLocalDataSource,
  });
  @override
  Future<Either<Failure, Unit>> joinUs({
    required JoinUsModel joinUsModel,
  }) async {
    try {
      final token = await authLocalDataSource.getToken();
      await joinUsRemoteDataSource.joinUs(
        joinUsModel: joinUsModel,
        token: token!,
      );
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        print("STATUS CODE: ${e.response?.statusCode}");
        print("RESPONSE DATA: ${e.response?.data}");
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
