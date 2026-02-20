import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/have_account_widget.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_with_another_ways.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/sign_up_button.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/sign_up_header.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignUpCubit>(),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                LogoAppBar(onBackTap: () => Navigator.pop(context)),
                const SignUpHeader(),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'الإسم بالكامل',
                  validator: (value) {
                    if (value?.isEmpty ?? true) return "حقل مطلوب";
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'البريد الالكتروني',
                  validator: (value) {
                    if (value?.isEmpty ?? true) return "حقل مطلوب";
                    if (!value!.contains('@')) {
                      return "بريد إلكتروني غير صالح";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'كلمة المرور',
                  obscureText: true,
                  showEyeIcon: true,
                  validator: (value) {
                    if (value?.isEmpty ?? true) return "حقل مطلوب";
                    if (value!.length < 6) {
                      return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _confirmPasswordController,
                  hintText: 'تأكيد كلمة المرور',
                  obscureText: true,
                  showEyeIcon: true,
                  validator: (value) {
                    if (value?.isEmpty ?? true) return "حقل مطلوب";
                    if (value!.length < 6) {
                      return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40.h),
                SignUpButton(
                  formKey: _formKey,
                  nameController: _nameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                ),
                SizedBox(height: 20.h),
                const HaveAccountWidget(),
                SizedBox(height: 24.h),
                const LoginWithAnotherWays(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
