import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';

abstract class JoinUsRepo {
  Future<Either<Failure, Unit>> joinUs({required JoinUsModel joinUsModel});
}

class JoinUsModel {
  final int id;
  final String userName;
  final String userFamilyName;
  final String userEmail;
  final String userBirthDate;
  final String userSocialStatus;
  final String userJop;
  final String userPhone;
  final String userMessage;

  JoinUsModel({
    required this.id,
    required this.userName,
    required this.userEmail,
    required this.userBirthDate,
    required this.userSocialStatus,
    required this.userJop,
    required this.userPhone,
    required this.userMessage,
    required this.userFamilyName,
  });
}
