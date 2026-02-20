import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/notification/domain/repo/notification_repo.dart';

class MarkAllNotificationAsReadUseCase {
  final NotificationRepo notificationRepo;

  MarkAllNotificationAsReadUseCase({required this.notificationRepo});
  Future<Either<Failure, Unit>> call() {
    return notificationRepo.markAllNotificationAsRead();
  }
}
