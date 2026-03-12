import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/NewsDetails/domain/entity/news_details_entity.dart';
import 'package:shajara_tech/features/NewsDetails/domain/repo/news_details_repo.dart';

class GetNewsDetailsUseCase {
  final NewsDetailsRepo newsDetailsRepo;

  GetNewsDetailsUseCase({required this.newsDetailsRepo});
  Future<Either<Failure, NewsDetailsEntity>> call(int id) {
    return newsDetailsRepo.getNewsDetails(id);
  }
}
