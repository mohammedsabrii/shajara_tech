import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/notification/data/model/notification_model/notification_model.dart';

abstract class NotificationDataSource {
  Future<List<NotificationModel>> getAllNotification();
  Future<void> markAllNotificationAsRead();
}

class NotificationDataSourceImpl implements NotificationDataSource {
  final ApiService apiService;

  NotificationDataSourceImpl({required this.apiService});
  @override
  Future<List<NotificationModel>> getAllNotification() async {
    final response = await apiService.getDynamicData(endPoint: 'notifications');
    return (response as List)
        .map((json) => NotificationModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> markAllNotificationAsRead() async {
    await apiService.post(endPoint: 'notifications/read-all');
  }
}
