import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Text(
          'أنشئ حسابك الآن',
          style: AppTextStyles.styleAlmaraiBold18(context),
        ),
        SizedBox(height: 8.h),
        Text(
          'ادخل التفاصيل التالية لإنشاء حساب جديد',
          style: AppTextStyles.styleAlmaraiRegular12(
            context,
          ).copyWith(color: AppColors.kDescriptionColor),
        ),
        SizedBox(height: 28.h),
      ],
    );
  }
}
