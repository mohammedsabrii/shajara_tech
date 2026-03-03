import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/domain/repo/tribes_repo.dart';

class GetTribesUseCase {
  final TribesRepo tribesRepo;

  GetTribesUseCase({required this.tribesRepo});
  Future<Either<Failure, List<TribesEntity>>> call() {
    return tribesRepo.getTribes();
  }
}
