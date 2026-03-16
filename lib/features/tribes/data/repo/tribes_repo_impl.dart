import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/tribes/data/data_source/tribes_remote_data_source.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/domain/repo/tribes_repo.dart';

class TribesRepoImpl implements TribesRepo {
  final TribesRemoteDataSource tribesRemoteDataSource;
  TribesRepoImpl({required this.tribesRemoteDataSource});

  @override
  Future<Either<Failure, List<TribesEntity>>> getTribes({
    required int perPage,
  }) async {
    try {
      final response = await tribesRemoteDataSource.getTribes(perPage: perPage);
      return Right(response);
    } catch (e) {
      if (e is DioException) return Left(ServerFailure.fromDiorError(e));
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, TribesDetailsEntity>> getTribeDetails({
    required int tribeId,
  }) async {
    try {
      final response = await tribesRemoteDataSource.getTribeDetails(
        tribeId: tribeId,
      );
      return Right(response);
    } catch (e) {
      if (e is DioException) return Left(ServerFailure.fromDiorError(e));
      return Left(ServerFailure(e.toString()));
    }
  }
}
