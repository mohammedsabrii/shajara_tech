import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class OtpScreenHeader extends StatelessWidget {
  const OtpScreenHeader({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(height: 61.h),
        Text('رمز التحقق', style: AppTextStyles.styleAlmaraiBold18(context)),
        SizedBox(height: 8.h),
        Text(
          'تم إرسال رمز التحقق إلي “$email”',
          style: AppTextStyles.styleAlmaraiRegular12(
            context,
          ).copyWith(color: AppColors.kDescriptionColor),
        ),
      ],
    );
  }
}
