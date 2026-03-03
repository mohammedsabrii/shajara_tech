import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/profile/domain/repo/delete_account_repo.dart';

class ConfirmPasswordToDeleteAccountUseCase {
  final DeleteAccountRepo deleteAccountRepo;

  ConfirmPasswordToDeleteAccountUseCase({required this.deleteAccountRepo});
  Future<Either<Failure, Unit>> confirmPasswordToDeleteAccount({
    required String password,
  }) {
    return deleteAccountRepo.confirmPasswordToDeleteAccount(password: password);
  }
}
