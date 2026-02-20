import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/notification/presentation/manager/cubit/notifications_cubit/get_notifications_cubit.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_screen_bloc_builder.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetNotificationsCubit>()..getNotifications(),
      child: const Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(child: NotificationScreenBlocBuilder()),
      ),
    );
  }
}
