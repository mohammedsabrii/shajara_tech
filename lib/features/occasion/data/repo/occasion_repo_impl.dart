// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:shajara_tech/core/errors/failure.dart';
// import 'package:shajara_tech/features/occasion/data/data_source/occasion_remote_data_source.dart';
// import 'package:shajara_tech/features/occasion/domain/entity/occasion_entity.dart';
// import 'package:shajara_tech/features/occasion/domain/repo/occasion_repo.dart';

// class OccasionRepoImpl implements OccasionRepo {
//   final OccasionRemoteDataSource occasionRemoteDataSource;
//   OccasionRepoImpl({required this.occasionRemoteDataSource});

//   @override
//   Future<Either<Failure, List<OccasionEntity>>> getOccasions({
//     required int perPage,
//   }) async {
//     try {
//       final data = await occasionRemoteDataSource.getOccasion(perPage: perPage);
//       return Right(data);
//     } catch (e) {
//       if (e is DioException) return Left(ServerFailure.fromDiorError(e));
//       return Left(ServerFailure(e.toString()));
//     }
//   }
// }
