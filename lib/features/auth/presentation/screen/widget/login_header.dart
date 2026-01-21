import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('مرحباً بك', style: AppTextStyles.styleAlmaraiBold18(context)),
        SizedBox(height: 8.h),
        Text(
          'سجل الدخول عبر بريدك الالكتروني',
          style: AppTextStyles.styleAlmaraiRegular12(
            context,
          ).copyWith(color: AppColors.kDescriptionColor),
        ),
        SizedBox(height: 28.h),
      ],
    );
  }
}
