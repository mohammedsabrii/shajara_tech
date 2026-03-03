import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/check_reset_code_cubit/check_reset_code_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_fields.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_screen_body.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.email});

  final String email;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isLoading = false;
  final GlobalKey<OtpFieldsState> otpKey = GlobalKey<OtpFieldsState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocListener<CheckResetCodeCubit, CheckResetCodeState>(
            listener: (context, state) {
              if (state is CheckResetCodeLoading) {
                setState(() => isLoading = true);
              } else if (state is CheckResetCodeFailure) {
                setState(() => isLoading = false);
                customShowSnackBar(context, title: state.errorMessage);
              } else if (state is CheckResetCodeSuccess) {
                setState(() => isLoading = false);

                final otpCode = otpKey.currentState?.getOtpCode() ?? '';

                GoRouter.of(context).push(
                  AppRouter.kResetPasswordScreen,
                  extra: {'email': widget.email, 'otpCode': otpCode},
                );
              }
            },
            child: OtpScreenBody(
              email: widget.email,
              isLoading: isLoading,
              otpKey: otpKey,
            ),
          ),
        ),
      ),
    );
  }
}
