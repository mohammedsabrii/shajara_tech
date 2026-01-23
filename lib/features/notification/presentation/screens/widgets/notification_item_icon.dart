import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';

class NotificationItemIcon extends StatelessWidget {
  const NotificationItemIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.h,
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(12.w),
      child: SvgPicture.asset(icon),
    );
  }
}
