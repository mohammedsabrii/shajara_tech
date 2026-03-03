import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/sign_up_cubit/sign_up_cubit.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
  }) : _formKey = formKey,
       _nameController = nameController,
       _emailController = emailController,
       _passwordController = passwordController,
       _confirmPasswordController = confirmPasswordController;
  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _confirmPasswordController;

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          setState(() {
            isLoading = true;
          });
        } else if (state is SignUpSuccess) {
          setState(() {
            isLoading = false;
          });
          GoRouter.of(context).go(AppRouter.kLogInScreen);
          customShowSnackBar(context, title: 'تم إنشاء الحساب بنجاح');
        } else if (state is SignUpFailure) {
          setState(() {
            isLoading = false;
          });
          customShowSnackBar(context, title: state.errorMessage);
        }
      },
      child: CustomButton(
        titleWidget: isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                'إنشاء حساب',
                style: AppTextStyles.styleAlmaraiExtraBold14(
                  context,
                ).copyWith(color: Colors.white),
              ),
        onTap: () {
          if (widget._formKey.currentState!.validate()) {
            context.read<SignUpCubit>().signUp(
              name: widget._nameController.text.trim(),
              email: widget._emailController.text.trim(),
              password: widget._passwordController.text,
              confirmPassword: widget._confirmPasswordController.text,
            );
          }
        },
      ),
    );
  }
}
