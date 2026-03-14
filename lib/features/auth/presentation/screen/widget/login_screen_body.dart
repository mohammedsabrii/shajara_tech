import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/auth/presentation/manager/Cubits/login_cubit/login_cubit.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/do_not_have_account.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/logIn_button.dart';
import 'package:shajara_tech/features/auth/presentation/screen/widget/login_header.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38.h),
                Center(
                  child: Image.asset(
                    AppImages.kShjaraTechIconpng2,
                    height: 114.h,
                    width: 241.w,
                  ),
                ),
                SizedBox(height: 37.h),
                const LoginHeader(),
                CustomTextField(
                  controller: _emailController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) return "حقل مطلوب";
                    if (!value!.contains('@')) {
                      return "بريد إلكتروني غير صالح";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'البريد الالكتروني',
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
                      return "كلمة المرور قصيرة جداً";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => GoRouter.of(
                      context,
                    ).push(AppRouter.kForgotPasswordScreen),
                    child: Text(
                      'هل نسيت كلمة المرور ؟',
                      style: AppTextStyles.styleAlmaraiBold10(
                        context,
                      ).copyWith(color: AppColors.kPrimaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                LogInButton(
                  formKey: _formKey,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                SizedBox(height: 20.h),
                const DoNotHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
