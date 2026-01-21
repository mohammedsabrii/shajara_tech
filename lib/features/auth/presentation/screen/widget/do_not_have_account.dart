import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب  ؟',
          style: AppTextStyles.styleAlmaraiRegular10(
            context,
          ).copyWith(color: AppColors.kSpanishGray),
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSignUpScreen);
          },
          child: Text(
            ' انشئ حسابك الان',
            style: AppTextStyles.styleAlmaraiRegular10(
              context,
            ).copyWith(color: AppColors.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
