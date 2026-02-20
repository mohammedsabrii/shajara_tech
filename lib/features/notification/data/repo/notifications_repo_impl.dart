import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/notification/data/data_source/notification_data_source.dart';
import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';
import 'package:shajara_tech/features/notification/domain/repo/notification_repo.dart';

class NotificationsRepoImpl implements NotificationRepo {
  final NotificationDataSource notificationDataSource;

  NotificationsRepoImpl({required this.notificationDataSource});

  @override
  Future<Either<Failure, List<GetNotificationEntity>>>
  getAllNotification() async {
    try {
      final notifications = await notificationDataSource.getAllNotification();
      return Right(notifications);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> markAllNotificationAsRead() async {
    try {
      await notificationDataSource.markAllNotificationAsRead();
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
