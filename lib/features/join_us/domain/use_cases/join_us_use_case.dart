import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';

class JoinUsUseCase {
  final JoinUsRepo joinUsRepo;

  JoinUsUseCase({required this.joinUsRepo});
  Future<Either<Failure, Unit>> call({required JoinUsModel joinUsModel}) {
    return joinUsRepo.joinUs(joinUsModel: joinUsModel);
  }
}
