import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/edit_password/presentation/screen/widget/edit_passwprd_button.dart';

class EditPasswordScreenBody extends StatefulWidget {
  const EditPasswordScreenBody({super.key});

  @override
  State<EditPasswordScreenBody> createState() => _EditPasswordScreenBodyState();
}

class _EditPasswordScreenBodyState extends State<EditPasswordScreenBody> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              CustomAppBar(
                title: 'تعديل كلمة المرور',
                onBackTap: () => GoRouter.of(context).pop(),
              ),
              SizedBox(height: 32.h),
              Text(
                'كلمة المرور يجب أن تكون 8 أحرف على الأقل',
                style: AppTextStyles.styleAlmaraiRegular14(
                  context,
                ).copyWith(color: AppColors.kTitleColor),
              ),
              SizedBox(height: 16.h),
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
                  if (value!.length < 6) {
                    return "كلمة المرور قصيرة جداً";
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.h),
              EditPasswprdButton(
                formKey: _formKey,
                newPasswordController: _newPasswordController,
                confirmNewPasswordController: _confirmNewPasswordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
