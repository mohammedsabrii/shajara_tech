import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/profile/data/data_source/delete_account_data_source.dart';
import 'package:shajara_tech/features/profile/domain/repo/delete_account_repo.dart';

class DeleteAccountRepoImpl implements DeleteAccountRepo {
  final DeleteAccountRemoteDataSource deleteAccountDataSource;

  DeleteAccountRepoImpl({required this.deleteAccountDataSource});
  @override
  Future<Either<Failure, Unit>> confirmPasswordToDeleteAccount({
    required String password,
  }) async {
    try {
      await deleteAccountDataSource.confirmPasswordToDeleteAccount(
        password: password,
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
  Future<Either<Failure, Unit>> deleteAccount() async {
    try {
      await deleteAccountDataSource.deleteAccount();
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
