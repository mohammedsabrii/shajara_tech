import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/login_cubit/login_cubit.dart';

class LogInButton extends StatefulWidget {
  const LogInButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
       _emailController = emailController,
       _passwordController = passwordController;
  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  State<LogInButton> createState() => _LogInButtonState();
}

class _LogInButtonState extends State<LogInButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          setState(() {
            isLoading = false;
          });

          GoRouter.of(context).go(
            AppRouter.kLogInOtpScreen,
            extra: widget._emailController.text.trim(),
          );
        } else if (state is LoginLoading) {
          setState(() {
            isLoading = true;
          });
        } else if (state is LoginFailure) {
          setState(() {
            isLoading = false;
          });

          print('Login failed: ${state.errorMessage}');
          customShowSnackBar(context, title: state.errorMessage);
        }
      },
      child: CustomButton(
        titleWidget: isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                'تسجيل الدخول',
                style: AppTextStyles.styleAlmaraiExtraBold14(
                  context,
                ).copyWith(color: Colors.white),
              ),
        onTap: () {
          if (widget._formKey.currentState!.validate()) {
            context.read<LoginCubit>().login(
              email: widget._emailController.text.trim(),
              password: widget._passwordController.text,
            );
          }
        },
      ),
    );
  }
}
