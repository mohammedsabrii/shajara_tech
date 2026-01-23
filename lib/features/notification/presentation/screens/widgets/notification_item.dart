import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_item_icon.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_item_title_and_description.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final String icon, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationItemIcon(icon: icon),
            SizedBox(width: 12.w),
            NotificationItemTitleAndDescription(
              title: title,
              description: description,
            ),
            SizedBox(width: 8.w),
            Text(
              '2 ساعة',
              style: AppTextStyles.styleAlmaraiRegular12(
                context,
              ).copyWith(color: AppColors.kGraniteGray),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        const Divider(thickness: 1, color: AppColors.kPlatinum),
        SizedBox(height: 16.h),
      ],
    );
  }
}
