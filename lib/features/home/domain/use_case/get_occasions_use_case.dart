import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
import 'package:shajara_tech/features/home/domain/repo/occasion_repo.dart';

class GetOccasionsUseCase {
  final OccasionRepo occasionRepo;

  GetOccasionsUseCase({required this.occasionRepo});
  Future<Either<Failure, List<OccasionEntity>>> call() {
    return occasionRepo.getOccasions();
  }
}
