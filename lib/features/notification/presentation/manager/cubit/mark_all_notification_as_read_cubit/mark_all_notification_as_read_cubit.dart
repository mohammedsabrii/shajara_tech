import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/notification/domain/use_cases/mark_all_notification_as_read_use_case.dart';

part 'mark_all_notification_as_read_state.dart';

class MarkAllNotificationAsReadCubit
    extends Cubit<MarkAllNotificationAsReadState> {
  MarkAllNotificationAsReadCubit(this.markAllNotificationAsReadUseCase)
    : super(MarkAllNotificationAsReadInitial());
  final MarkAllNotificationAsReadUseCase markAllNotificationAsReadUseCase;
  Future<void> markAllNotificationAsRead() async {
    emit(MarkAllNotificationAsReadLoading());
    final data = await markAllNotificationAsReadUseCase.call();
    data.fold(
      (failure) =>
          emit(MarkAllNotificationAsReadFailure(errorMessage: failure.message)),
      (response) => emit(MarkAllNotificationAsReadSuccess()),
    );
  }
}
