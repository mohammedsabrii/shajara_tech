import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';
import 'package:shajara_tech/features/notification/domain/use_cases/notification_use_case.dart';

part 'get_notifications_state.dart';

class GetNotificationsCubit extends Cubit<GetNotificationsState> {
  GetNotificationsCubit(this.notificationUseCase)
    : super(GetNotificationsInitial());
  final NotificationUseCase notificationUseCase;
  Future<void> getNotifications() async {
    emit(GetNotificationsLoading());
    final data = await notificationUseCase.call();
    data.fold(
      (failure) {
        print(failure.message);
        emit(GetNotificationsFailure(errorMessage: failure.message));
      },
      (response) =>
          emit(GetNotificationsSuccess(getNotificationEntity: response)),
    );
  }
}
