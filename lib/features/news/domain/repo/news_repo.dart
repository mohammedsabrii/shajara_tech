import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';

abstract class NewsRepo {
  Future<Either<Failure, List<NewsEntity>>> getNews();
}
