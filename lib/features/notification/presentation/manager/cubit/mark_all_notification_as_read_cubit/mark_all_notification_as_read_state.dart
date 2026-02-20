part of 'mark_all_notification_as_read_cubit.dart';

@immutable
sealed class MarkAllNotificationAsReadState {}

final class MarkAllNotificationAsReadInitial
    extends MarkAllNotificationAsReadState {}

final class MarkAllNotificationAsReadLoading
    extends MarkAllNotificationAsReadState {}

final class MarkAllNotificationAsReadSuccess
    extends MarkAllNotificationAsReadState {}

final class MarkAllNotificationAsReadFailure
    extends MarkAllNotificationAsReadState {
  final String errorMessage;

  MarkAllNotificationAsReadFailure({required this.errorMessage});
}
