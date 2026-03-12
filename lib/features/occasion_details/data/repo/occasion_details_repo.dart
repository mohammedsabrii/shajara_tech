import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/occasion_details/data/data_source/occasion_details_remote_data_source.dart';
import 'package:shajara_tech/features/occasion_details/domain/entity/occasion_details_entity.dart';
import 'package:shajara_tech/features/occasion_details/domain/repo/occasion_details_repo.dart';

class OccasionDetailsRepoImpl implements OccasionDetailsRepo {
  final OccasionDetailsRemoteDataSource occasionDetailsRemoteDataSource;

  OccasionDetailsRepoImpl({required this.occasionDetailsRemoteDataSource});
  @override
  Future<Either<Failure, OccasionDetailsEntity>> getOccasionDetails(
    int id,
  ) async {
    try {
      final result = await occasionDetailsRemoteDataSource.getOccasionDetails(
        id,
      );
      return Right(result);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
