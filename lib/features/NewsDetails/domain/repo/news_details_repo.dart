import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/NewsDetails/domain/entity/news_details_entity.dart';

abstract class NewsDetailsRepo {
  Future<Either<Failure, NewsDetailsEntity>> getNewsDetails(int id);
}
