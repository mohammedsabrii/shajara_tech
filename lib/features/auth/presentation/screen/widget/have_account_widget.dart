import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لديك حساب بالفعل ؟',
          style: AppTextStyles.styleAlmaraiRegular10(
            context,
          ).copyWith(color: AppColors.kSpanishGray),
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: () {},
          child: Text(
            'سجل دخول',
            style: AppTextStyles.styleAlmaraiRegular10(
              context,
            ).copyWith(color: AppColors.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
