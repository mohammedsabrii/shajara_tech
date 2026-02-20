import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';

class NotificationModel extends GetNotificationEntity {
  final int? id;
  final String? title;
  final String? message;
  final String? body;
  final String? content;
  final String? subject;
  final dynamic type;
  final String? icon;
  final dynamic readAt;
  final DateTime? createdAt;

  NotificationModel({
    this.id,
    this.title,
    this.message,
    this.body,
    this.content,
    this.subject,
    this.type,
    this.icon,
    this.readAt,
    this.createdAt,
  }) : super(
          notificationMessage: message ?? body ?? content ?? '',
          notificationTitle: title ?? subject ?? '',
          notificationTime: createdAt ?? DateTime.now(),
        );

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      body: json['body'] as String?,
      content: json['content'] as String?,
      subject: json['subject'] as String?,
      type: json['type'],
      icon: json['icon'] as String?,
      readAt: json['read_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'message': message,
        'body': body,
        'content': content,
        'subject': subject,
        'type': type,
        'icon': icon,
        'read_at': readAt,
        'created_at': createdAt?.toIso8601String(),
      };

}