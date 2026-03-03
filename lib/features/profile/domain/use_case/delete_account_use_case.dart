import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/profile/domain/repo/delete_account_repo.dart';

class DeleteAccountUseCase {
  final DeleteAccountRepo deleteAccountRepo;

  DeleteAccountUseCase({required this.deleteAccountRepo});

  Future<Either<Failure, Unit>> deleteAccount() {
    return deleteAccountRepo.deleteAccount();
  }
}
