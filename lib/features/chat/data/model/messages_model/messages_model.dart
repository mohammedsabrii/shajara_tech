import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';

class MessagesModel extends MessagesEntity {
  int? id;
  int senderId;
  int? receiverId;
  String? message;
  dynamic image;
  String? senderName;
  dynamic senderAvatar;
  String? createdAt;
  String? time;

  MessagesModel({
    this.id,
    required this.senderId,
    this.receiverId,
    this.message,
    this.image,
    this.senderName,
    this.senderAvatar,
    this.createdAt,
    this.time,
  }) : super(
         messageContent: message ?? '',
         messageTime: time ?? '',
         messageSenderId: senderId,
       );

  factory MessagesModel.fromJson(Map<String, dynamic> json) => MessagesModel(
    id: json['id'] as int?,
    senderId: json['sender_id'] as int,
    receiverId: json['receiver_id'] as int?,
    message: json['message'] as String?,
    image: json['image'] as dynamic,
    senderName: json['sender_name'] as String?,
    senderAvatar: json['sender_avatar'] as dynamic,
    createdAt: json['created_at'] as String?,
    time: json['time'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'sender_id': senderId,
    'receiver_id': receiverId,
    'message': message,
    'image': image,
    'sender_name': senderName,
    'sender_avatar': senderAvatar,
    'created_at': createdAt,
    'time': time,
  };
}
