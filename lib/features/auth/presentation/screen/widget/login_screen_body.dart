import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/do_not_have_account.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_header.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_with_another_ways.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 38.h),
          Center(
            child: Image.asset(
              AppImages.kShjaraTechIconpng2,
              height: 114.h,
              width: 241.w,
            ),
          ),
          SizedBox(height: 37.h),
          const LoginHeader(),
          const CustomTextField(hintText: 'البريد الالكتروني'),
          SizedBox(height: 16.h),
          const CustomTextField(
            hintText: 'كلمة المرور',
            obscureText: true,
            showEyeIcon: true,
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () =>
                  GoRouter.of(context).push(AppRouter.kForgotPasswordScreen),
              child: Text(
                'هل نسيت كلمة المرور ؟',
                style: AppTextStyles.styleAlmaraiBold10(
                  context,
                ).copyWith(color: AppColors.kPrimaryColor),
              ),
            ),
          ),
          SizedBox(height: 40.h),
          const CustomButton(title: 'تسجيل الدخول'),
          SizedBox(height: 20.h),
          const DoNotHaveAccount(),
          SizedBox(height: 24.h),
          const LoginWithAnotherWays(),
        ],
      ),
    );
  }
}
