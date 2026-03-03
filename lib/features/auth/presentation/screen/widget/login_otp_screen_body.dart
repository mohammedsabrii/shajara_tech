import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/check_reset_otp_code_cubit/check_login_otp_code_cubit.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_otp_screen_details.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/otp_fields.dart';

class LogInOtpScreenBody extends StatefulWidget {
  const LogInOtpScreenBody({super.key, required this.email});
  final String email;

  @override
  State<LogInOtpScreenBody> createState() => _LogInOtpScreenBodyState();
}

class _LogInOtpScreenBodyState extends State<LogInOtpScreenBody> {
  bool isLoading = false;
  final GlobalKey<OtpFieldsState> otpKey = GlobalKey<OtpFieldsState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocListener<CheckLoginOtpCodeCubit, CheckLoginOtpCodeState>(
        listener: (context, state) {
          if (state is CheckLoginOtpCodeLoading) {
            setState(() => isLoading = true);
          } else if (state is CheckLoginOtpCodeFailure) {
            setState(() => isLoading = false);
            customShowSnackBar(context, title: state.errorMessage);
          } else if (state is CheckLoginOtpCodeSuccess) {
            setState(() => isLoading = false);

            final otpCode = otpKey.currentState?.getOtpCode() ?? '';

            GoRouter.of(context).push(
              AppRouter.kHomeScreen,
              extra: {'email': widget.email, 'otpCode': otpCode},
            );
          }
        },
        child: LogInOtpScreenDetails(
          email: widget.email,
          isLoading: isLoading,
          otpKey: otpKey,
        ),
      ),
    );
  }
}
