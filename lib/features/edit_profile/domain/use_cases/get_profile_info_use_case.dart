import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';

class GetProfileInfoUseCase {
  final EditProfileRepo editProfileRepo;

  GetProfileInfoUseCase({required this.editProfileRepo});
  Future<Either<Failure, ProfileInfoEntity>> getProfileInfo() {
    return editProfileRepo.getProfileInfo();
  }
}
