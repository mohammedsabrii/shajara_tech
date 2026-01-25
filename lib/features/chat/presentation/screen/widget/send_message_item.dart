import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class SendMessageItem extends StatelessWidget {
  const SendMessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(
          children: [
            Text(
              'اكتب....',
              style: AppTextStyles.styleAlmaraiBold13(
                context,
              ).copyWith(color: AppColors.kPlatinum),
            ),
            const Spacer(),
            SvgPicture.asset(AppIcons.kMicrophoneIcon),
            const SizedBox(width: 8),
            SvgPicture.asset(AppIcons.kSendIcon),
          ],
        ),
      ),
    );
  }
}
