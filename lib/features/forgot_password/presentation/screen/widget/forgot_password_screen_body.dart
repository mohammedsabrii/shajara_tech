import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_app_bar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_screen_header.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/send_otp_button.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({
    super.key,
    required this.isLoading,
    required this.emailController,
  });
  
  final bool isLoading;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          const ForgotPasswordAppBar(),
          const ForgotPasswordScreenHeader(),
          SizedBox(height: 28.h),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) return "حقل مطلوب";
              if (!value!.contains('@')) {
                return "بريد إلكتروني غير صالح";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            hintText: 'البريد الالكتروني',
          ),
          SizedBox(height: 40.h),
          SendOtpButton(
            emailController: emailController,
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}
