import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/reset_password_cubit/reset_password_cubit.dart';

class ResetPasswordScreenBody extends StatefulWidget {
  const ResetPasswordScreenBody({
    super.key,
    required this.isLoading,
    required this.email,
    required this.otpCode,
  });

  final bool isLoading;
  final String email, otpCode;

  @override
  State<ResetPasswordScreenBody> createState() =>
      _ResetPasswordScreenBodyState();
}

class _ResetPasswordScreenBodyState extends State<ResetPasswordScreenBody> {
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              CustomAppBar(
                title: 'تعديل كلمة المرور',
                onBackTap: () => GoRouter.of(context).pop(),
              ),
              SizedBox(height: 32.h),
              CustomTextField(
                controller: _newPasswordController,
                hintText: 'كلمة المرور الجديدة',
                showEyeIcon: true,
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) return "حقل مطلوب";
                  if (value!.length < 6) {
                    return "كلمة المرور قصيرة جداً";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                controller: _confirmNewPasswordController,
                hintText: 'تأكيد كلمة المرور الجديدة',
                showEyeIcon: true,
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) return "حقل مطلوب";
                  if (value != _newPasswordController.text) {
                    return "كلمة المرور غير متطابقة";
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.h),
              CustomButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<ResetPasswordCubit>().resetPassword(
                      otpCode: widget.otpCode,
                      confirmNewPassword: _confirmNewPasswordController.text
                          .trim(),
                      newPassword: _newPasswordController.text.trim(),
                      email: widget.email,
                    );
                  }
                },
                titleWidget: widget.isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(
                        'حفظ التغييرات',
                        style: AppTextStyles.styleAlmaraiExtraBold14(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
