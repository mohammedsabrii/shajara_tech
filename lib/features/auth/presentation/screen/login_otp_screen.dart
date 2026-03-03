import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_otp_screen_body.dart';

class LoginOtpScreen extends StatelessWidget {
  const LoginOtpScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(child: LogInOtpScreenBody(email: email)),
    );
  }
}
