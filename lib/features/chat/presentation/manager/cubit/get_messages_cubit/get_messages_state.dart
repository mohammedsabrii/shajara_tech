part of 'get_messages_cubit.dart';

@immutable
sealed class GetMessagesState {}

final class GetMessagesInitial extends GetMessagesState {}

final class GetMessagesLoading extends GetMessagesState {}

final class GetMessagesEmpty extends GetMessagesState {}

final class GetMessagesSuccess extends GetMessagesState {
  final List<MessagesEntity> messagesEntity;

  GetMessagesSuccess({required this.messagesEntity});
}

final class GetMessagesFailure extends GetMessagesState {
  final String errorMessage;

  GetMessagesFailure({required this.errorMessage});
}
