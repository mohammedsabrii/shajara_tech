import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/join_us/data/data_source/join_us_remote_data_source.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';

class JoinUsRepoImpl implements JoinUsRepo {
  final JoinUsRemoteDataSource joinUsRemoteDataSource;

  JoinUsRepoImpl({required this.joinUsRemoteDataSource});
  @override
  Future<Either<Failure, Unit>> joinUs({
    required JoinUsModel joinUsModel,
  }) async {
    try {
      await joinUsRemoteDataSource.joinUs(joinUsModel: joinUsModel);
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
