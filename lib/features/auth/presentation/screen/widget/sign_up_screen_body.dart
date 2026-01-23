import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/have_account_widget.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_with_another_ways.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/sign_up_header.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          LogoAppBar(onBackTap: () => Navigator.pop(context)),
          const SignUpHeader(),
          const CustomTextField(hintText: 'الإسم بالكامل'),
          SizedBox(height: 16.h),
          const CustomTextField(hintText: 'البريد الالكتروني'),
          SizedBox(height: 16.h),
          const CustomTextField(
            hintText: 'كلمة المرور',
            obscureText: true,
            showEyeIcon: true,
          ),
          SizedBox(height: 16.h),
          const CustomTextField(
            hintText: 'تأكيد كلمة المرور',
            obscureText: true,
            showEyeIcon: true,
          ),
          SizedBox(height: 40.h),
          const CustomButton(title: 'إنشاء حساب'),
          SizedBox(height: 20.h),
          const HaveAccountWidget(),
          SizedBox(height: 24.h),
          const LoginWithAnotherWays(),
        ],
      ),
    );
  }
}
