import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';

class EditProfileInfoUseCase {
  final EditProfileRepo editProfileRepo;

  EditProfileInfoUseCase({required this.editProfileRepo});
  Future<Either<Failure, Unit>> call({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  }) {
    return editProfileRepo.editProfileInfo(
      userName: userName,
      userJop: userJop,
      dateOfBirth: dateOfBirth,
      userLifeStatus: userLifeStatus,
      userPhoneNumper: userPhoneNumper,
    );
  }
}
