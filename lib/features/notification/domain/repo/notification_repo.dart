import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';

abstract class NotificationRepo {
  Future<Either<Failure, List<GetNotificationEntity>>> getAllNotification();
  Future<Either<Failure, Unit>> markAllNotificationAsRead();
}
