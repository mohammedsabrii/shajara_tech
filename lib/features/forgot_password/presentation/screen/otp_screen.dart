import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_screen_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: const OtpScreenBody(),
        ),
      ),
    );
  }
}
