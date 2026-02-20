import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_profile/data/data_source/edit_profile_remote_data_source.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/domain/repo/edit_profile_repo.dart';

class EditProfileRepoImpl implements EditProfileRepo {
  final EditProfileRemoteDataSource editProfileRemoteDataSource;

  EditProfileRepoImpl({required this.editProfileRemoteDataSource});
  @override
  Future<Either<Failure, Unit>> editProfileInfo({
    required String userName,
    required String userJop,
    required DateTime dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  }) async {
    try {
      await editProfileRemoteDataSource.editProfileInfo(
        userName: userName,
        userJop: userJop,
        dateOfBirth: dateOfBirth,
        userLifeStatus: userLifeStatus,
        userPhoneNumper: userPhoneNumper,
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
      final data = await editProfileRemoteDataSource.getProfileInfo();

      return Right(data);
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);

        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
