import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';
import 'package:shajara_tech/features/tribes/domain/repo/tribes_repo.dart';

class GetTribeDetailsUseCase {
  final TribesRepo tribesRepo;

  GetTribeDetailsUseCase({required this.tribesRepo});
  Future<Either<Failure, TribesDetailsEntity>> call({required int tribeId}) {
    return tribesRepo.getTribeDetails(tribeId: tribeId);
  }
}
