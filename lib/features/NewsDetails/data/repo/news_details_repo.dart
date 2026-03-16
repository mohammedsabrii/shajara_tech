// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:shajara_tech/core/errors/failure.dart';
// import 'package:shajara_tech/features/NewsDetails/data/data_source/news_details_remote_data_source.dart';
// import 'package:shajara_tech/features/NewsDetails/domain/entity/news_details_entity.dart';
// import 'package:shajara_tech/features/NewsDetails/domain/repo/news_details_repo.dart';

// class NewsDetailsRepoImpl implements NewsDetailsRepo {
//   final NewsDetailsRemoteDataSource newsDetailsRemoteDataSource;

//   NewsDetailsRepoImpl({required this.newsDetailsRemoteDataSource});
//   @override
//   Future<Either<Failure, NewsDetailsEntity>> getNewsDetails(int id) async {
//     try {
//       final result = await newsDetailsRemoteDataSource.getNewsDetails(id);
//       return Right(result);
//     } catch (e) {
//       if (e is DioException) {
//         return Left(ServerFailure.fromDiorError(e));
//       }
//       return Left(ServerFailure(e.toString()));
//     }
//   }
// }
