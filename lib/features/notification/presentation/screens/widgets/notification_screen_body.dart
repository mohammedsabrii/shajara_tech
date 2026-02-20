import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/notification/domain/entity/get_notification_entity.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_item.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({
    super.key,
    required this.getNotificationEntity,
  });
  final List<GetNotificationEntity> getNotificationEntity;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 18.h),
            CustomAppBar(
              title: 'الإشعارات',
              onBackTap: () => GoRouter.of(context).pop(),
            ),
            SizedBox(height: 32.h),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: getNotificationEntity.length,
              itemBuilder: (context, index) => NotificationItem(
                icon: AppIcons.kNewJoiningRequestIcon,
                title: getNotificationEntity[index].notificationTitle,
                description: getNotificationEntity[index].notificationMessage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

