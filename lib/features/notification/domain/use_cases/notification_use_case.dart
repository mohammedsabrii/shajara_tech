import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';
import 'package:shajara_tech/features/notification/domain/repo/notification_repo.dart';

class NotificationUseCase {
  final NotificationRepo notificationRepo;

  NotificationUseCase({required this.notificationRepo});
  Future<Either<Failure, List<GetNotificationEntity>>> call() {
    return notificationRepo.getAllNotification();
  }
}
