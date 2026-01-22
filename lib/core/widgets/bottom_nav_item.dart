import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
    required this.activeIcon,
    required this.unActiveIcon,
  });
  final String title;
  final String activeIcon, unActiveIcon;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isActive
              ? SvgPicture.asset(activeIcon)
              : SvgPicture.asset(unActiveIcon),
          SizedBox(height: 7.h),
          Text(
            title,
            style: AppTextStyles.styleAlmaraiBold10(context).copyWith(
              color: isActive
                  ? AppColors.kPrimaryColor
                  : AppColors.kSpanishGray,
            ),
          ),
        ],
      ),
    );
  }
}
