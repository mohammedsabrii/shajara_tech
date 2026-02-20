import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/send_otp_code_cubit/send_otp_code_cubit.dart';

class SendOtpButton extends StatelessWidget {
  const SendOtpButton({
    super.key,
    required this.emailController,
    required this.isLoading,
  });

  final TextEditingController emailController;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        context.read<SendOtpCodeCubit>().sendOtp(
          email: emailController.text.trim(),
        );
      },
      titleWidget: isLoading
          ? const CircularProgressIndicator(color: Colors.white)
          : Text(
              'أستمرار',
              style: AppTextStyles.styleAlmaraiExtraBold14(
                context,
              ).copyWith(color: Colors.white),
            ),
    );
  }
}
