import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/edit_password/data/data_source/edit_password_remote_data_source.dart';
import 'package:shajara_tech/features/edit_password/domain/repo/edit_password_repo.dart';

class EditPasswordRepoImpl implements EditPasswordRepo {
  final EditPasswordRemoteDataSource editPasswordRemoteDataSource;

  EditPasswordRepoImpl({required this.editPasswordRemoteDataSource});
  @override
  Future<Either<Failure, Unit>> editPassword({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    try {
      await editPasswordRemoteDataSource.editPassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        confirmNewPassword: confirmNewPassword,
      );
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
