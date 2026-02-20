import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/reset_password_cubit/reset_password_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/reset_password_screen_body.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({
    super.key,
    required this.email,
    required this.otpCode,
  });

  final String email;
  final String otpCode;

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
            listener: (context, state) {
              if (state is ResetPasswordLoading) {
                setState(() {
                  isLoading = true;
                });
              } else if (state is ResetPasswordFailure) {
                setState(() {
                  isLoading = false;
                });
                customShowSnackBar(context, title: state.errorMessage);
              } else if (state is ResetPasswordSuccess) {
                setState(() {
                  isLoading = false;
                });
                customShowSnackBar(
                  context,
                  title: 'تم تغيير كلمة المرور بنجاح',
                );
                GoRouter.of(context).go(AppRouter.kLogInScreen);
              }
            },
            child: ResetPasswordScreenBody(
              isLoading: isLoading,
              email: widget.email,
              otpCode: widget.otpCode,
            ),
          ),
        ),
      ),
    );
  }
}
