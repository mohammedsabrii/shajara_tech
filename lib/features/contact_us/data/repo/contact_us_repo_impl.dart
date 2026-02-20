import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/contact_us/data/data_source/contact_us_remote_data_source.dart';
import 'package:shajara_tech/features/contact_us/domain/repo/contact_us_repo.dart';

class ContactUsRepoImpl implements ContactUsRepo {
  final ContactUsRemoteDataSource contactUsRemoteDataSource;

  ContactUsRepoImpl({required this.contactUsRemoteDataSource});
  @override
  Future<Either<Failure, Unit>> contactUs({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    try {
      await contactUsRemoteDataSource.contactUs(
        name: name,
        email: email,
        subject: subject,
        message: message,
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
