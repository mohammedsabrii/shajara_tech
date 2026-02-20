import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/news/data/data_source/news_remote_data_source.dart';
import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';
import 'package:shajara_tech/features/news/domain/repo/news_repo.dart';

class NewsRepoImpl implements NewsRepo {
  final NewsRemoteDataSource newsRemoteDataSource;

  NewsRepoImpl({required this.newsRemoteDataSource});

  @override
  Future<Either<Failure, List<NewsEntity>>> getNews() async {
    try {
      final data = await newsRemoteDataSource.getNews();
      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
