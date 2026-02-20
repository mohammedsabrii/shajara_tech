import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

abstract class ContactUsRepo {
  Future<Either<Failure, Unit>> contactUs({
    required String name,
    required String email,
    required String subject,
    required String message,
  });
}
