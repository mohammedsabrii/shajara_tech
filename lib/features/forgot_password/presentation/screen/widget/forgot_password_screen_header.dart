import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class ForgotPasswordScreenHeader extends StatelessWidget {
  const ForgotPasswordScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 61.h),
        Text(
          'هل نسيت كلمة المرور',
          style: AppTextStyles.styleAlmaraiBold18(context),
        ),
        SizedBox(height: 8.h),
        Text(
          'ادخل عنوان البرد الالكتروني الذي سنرسل إليه رمز التحق (OTP) لإعادة تعيين كلمة المرور الخاصة بك',
          style: AppTextStyles.styleAlmaraiRegular12(
            context,
          ).copyWith(color: AppColors.kDescriptionColor),
        ),
      ],
    );
  }
}
