import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_password/domain/repo/edit_password_repo.dart';

class EditPasswordUseCase {
  final EditPasswordRepo editPasswordRepo;

  EditPasswordUseCase({required this.editPasswordRepo});
  Future<Either<Failure, Unit>> call({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) {
    return editPasswordRepo.editPassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
  }
}
