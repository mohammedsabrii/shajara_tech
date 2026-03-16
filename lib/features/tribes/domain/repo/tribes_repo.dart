import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';

abstract class TribesRepo {
  Future<Either<Failure, List<TribesEntity>>> getTribes({required int perPage});
  Future<Either<Failure, TribesDetailsEntity>> getTribeDetails({
    required int tribeId,
  });
}
