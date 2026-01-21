import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_screen_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: const ForgotPasswordScreenBody(),
        ),
      ),
    );
  }
}
