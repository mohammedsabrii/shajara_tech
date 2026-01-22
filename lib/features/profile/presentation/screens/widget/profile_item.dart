import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title, icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                SizedBox(width: 8.w),
                Text(
                  title,
                  style: AppTextStyles.styleAlmaraiRegular10(context),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 15.sp),
          ],
        ),
      ),
    );
  }
}
