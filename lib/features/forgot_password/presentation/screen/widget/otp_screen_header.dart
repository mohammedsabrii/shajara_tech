import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class OtpScreenHeader extends StatelessWidget {
  const OtpScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 61.h),
        Text('رمز التحقق', style: AppTextStyles.styleAlmaraiBold18(context)),
        SizedBox(height: 8.h),
        Text(
          'تم إرسال رمز التحقق إلي “abdelrahman@gmail.com”',
          style: AppTextStyles.styleAlmaraiRegular12(
            context,
          ).copyWith(color: AppColors.kDescriptionColor),
        ),
      ],
    );
  }
}
