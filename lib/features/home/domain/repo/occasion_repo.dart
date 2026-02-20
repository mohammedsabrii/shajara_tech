import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';

abstract class OccasionRepo {
  Future<Either<Failure, List<OccasionEntity>>> getOccasions();
}
