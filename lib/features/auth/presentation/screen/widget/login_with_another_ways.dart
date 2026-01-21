import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class LoginWithAnotherWays extends StatelessWidget {
  const LoginWithAnotherWays({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Divider(
                color: AppColors.kSpanishGray.withValues(alpha: 0.5),
                thickness: 1,
              ),
            ),
            SizedBox(width: 16.w),
            Text(
              'أو',
              style: AppTextStyles.styleAlmaraiRegular14(
                context,
              ).copyWith(color: AppColors.kTitleColor),
            ),
            SizedBox(width: 16.w),

            Flexible(
              child: Divider(
                color: AppColors.kSpanishGray.withValues(alpha: 0.5),
                thickness: 1,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.kIconGoogle),
            SizedBox(width: 38.w),
            SvgPicture.asset(AppIcons.kLogoFacebook),
            SizedBox(width: 38.w),
            SvgPicture.asset(AppIcons.kTwitterIcon),
          ],
        ),
      ],
    );
  }
}
