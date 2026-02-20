class MessagesEntity {
  final String messageContent;
  final String messageTime;
  final int messageSenderId;

  MessagesEntity({
    required this.messageContent,
    required this.messageTime,
    required this.messageSenderId,
  });
}
