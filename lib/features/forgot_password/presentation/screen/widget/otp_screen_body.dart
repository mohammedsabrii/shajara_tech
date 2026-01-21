import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/did_not_receive_code.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_app_bar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_fields.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_screen_header.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_timer.dart';

class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({super.key});

  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  final GlobalKey<OtpFieldsState> otpKey = GlobalKey<OtpFieldsState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 20.h),
          const ForgotPasswordAppBar(),
          const OtpScreenHeader(),
          SizedBox(height: 28.h),
          OtpFields(key: otpKey),
          const Center(child: OtpTimer()),
          SizedBox(height: 40.h),
          const CustomButton(title: 'أستمرار'),
          SizedBox(height: 20.h),
          const DidNotReceiveCode(),
        ],
      ),
    );
  }
}
