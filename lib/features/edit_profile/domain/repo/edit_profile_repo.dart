import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';

abstract class EditProfileRepo {
  Future<Either<Failure, ProfileInfoEntity>> getProfileInfo();
  Future<Either<Failure, Unit>> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  });
  Future<Either<Failure, Unit>> updateProfilePicture(File image);
}
