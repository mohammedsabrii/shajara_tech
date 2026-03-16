import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:shajara_tech/features/edit_profile/data/data_source/edit_profile_remote_data_source.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';

class EditProfileRepoImpl implements EditProfileRepo {
  final EditProfileRemoteDataSource editProfileRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  EditProfileRepoImpl({
    required this.editProfileRemoteDataSource,
    required this.authLocalDataSource,
  });
  @override
  Future<Either<Failure, Unit>> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userSocialStatus,
    required String userPhoneNumper,
  }) async {
    try {
      final userId = await authLocalDataSource.getUserId();
      await editProfileRemoteDataSource.editProfileInfo(
        userName: userName,
        userJop: userJop,
        dateOfBirth: dateOfBirth,
        userSocialStatus: userSocialStatus,
        userPhoneNumper: userPhoneNumper,
        userId: userId!,
      );

      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileInfoEntity>> getProfileInfo() async {
    try {
      final userId = await authLocalDataSource.getUserId();

      final data = await editProfileRemoteDataSource.getProfileInfo(
        userId: userId!,
      );

      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProfilePicture(File image) async {
    try {
      await editProfileRemoteDataSource.updateProfilePicture(image);
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
