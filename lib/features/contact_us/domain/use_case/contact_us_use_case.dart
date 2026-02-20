import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/contact_us/domain/repo/contact_us_repo.dart';

class ContactUsUseCase {
  final ContactUsRepo contactUsRepo;

  ContactUsUseCase({required this.contactUsRepo});
  Future<Either<Failure, Unit>> call({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) {
    return contactUsRepo.contactUs(
      name: name,
      email: email,
      subject: subject,
      message: message,
    );
  }
}
