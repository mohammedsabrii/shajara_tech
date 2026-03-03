import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/send_otp_code_cubit/send_otp_code_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_screen_body.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool isLoading = false;
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: BlocListener<SendOtpCodeCubit, SendOtpCodeState>(
            listener: (context, state) {
              if (state is SendOtpCodeLoading) {
                setState(() {
                  isLoading = true;
                });
              } else if (state is SendOtpCodeFailure) {
                setState(() {
                  isLoading = false;
                });
                customShowSnackBar(context, title: state.errorMessage);
              } else if (state is SendOtpCodeSuccess) {
                setState(() {
                  isLoading = false;
                });
                GoRouter.of(context).push(
                  AppRouter.kOtpScreen,
                  extra: emailController.text.trim(),
                );
              }
            },
            child: ForgotPasswordScreenBody(
              isLoading: isLoading,
              emailController: emailController,
            ),
          ),
        ),
      ),
    );
  }
}
