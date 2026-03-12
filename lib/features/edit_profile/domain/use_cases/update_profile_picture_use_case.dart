import 'dart:io';

import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

class UpdateProfilePictureUseCase {
  final EditProfileRepo editProfileRepo;

  UpdateProfilePictureUseCase(this.editProfileRepo);

  Future<Either<Failure, Unit>> call(File image) async {
    return await editProfileRepo.updateProfilePicture(image);
  }
}
