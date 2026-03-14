import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/check_reset_code_cubit/check_reset_code_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/did_not_receive_code.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_app_bar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_fields.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_screen_header.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_timer.dart';

class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({
    super.key,
    required this.email,
    required this.isLoading,
    required this.otpKey,
  });

  final String email;
  final bool isLoading;
  final GlobalKey<OtpFieldsState> otpKey;
  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          const ForgotPasswordAppBar(),
          OtpScreenHeader(email: widget.email.toString()),
          SizedBox(height: 28.h),
          OtpFields(key: widget.otpKey),
          const Center(child: OtpTimer()),
          SizedBox(height: 40.h),
          CustomButton(
            onTap: () {
              final otpCode = widget.otpKey.currentState?.getOtpCode() ?? '';

              if (otpCode.length == 4) {
                context.read<CheckResetCodeCubit>().verifyOtp(
                  email: widget.email,
                  otpCode: otpCode,
                );
              } else {
                customShowSnackBar(
                  context,
                  title: 'من فضلك أدخل كود التحقق كامل',
                );
              }
            },
            titleWidget: widget.isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(
                    'أستمرار',
                    style: AppTextStyles.styleAlmaraiExtraBold14(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
          ),
          SizedBox(height: 20.h),
          const DidNotReceiveCode(),
        ],
      ),
    );
  }
}
