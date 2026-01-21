import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class DidNotReceiveCode extends StatelessWidget {
  const DidNotReceiveCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لم يصلك الرمز ؟',
          style: AppTextStyles.styleAlmaraiRegular10(
            context,
          ).copyWith(color: AppColors.kSpanishGray),
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: () {},
          child: Text(
            ' إعادة الإرسال',
            style: AppTextStyles.styleAlmaraiRegular10(
              context,
            ).copyWith(color: AppColors.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
