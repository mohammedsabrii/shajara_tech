import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/notification/presentation/manager/cubit/notifications_cubit/get_notifications_cubit.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_screen_body.dart';

class NotificationScreenBlocBuilder extends StatelessWidget {
  const NotificationScreenBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotificationsCubit, GetNotificationsState>(
      builder: (context, state) {
        if (state is GetNotificationsSuccess) {
          return NotificationScreenBody(
            getNotificationEntity: state.getNotificationEntity,
          );
        } else if (state is GetNotificationsFailure) {
          return Center(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
