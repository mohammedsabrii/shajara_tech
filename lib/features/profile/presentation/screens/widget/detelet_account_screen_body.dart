import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/delete_account_button.dart';

class DeteletAccountScreenBody extends StatefulWidget {
  const DeteletAccountScreenBody({super.key});

  @override
  State<DeteletAccountScreenBody> createState() =>
      _DeteletAccountScreenBodyState();
}

class _DeteletAccountScreenBodyState extends State<DeteletAccountScreenBody> {
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _confirmPasswordController.dispose();
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
                title: 'حذف الحساب',
                onBackTap: () => GoRouter.of(context).pop(),
              ),
              SizedBox(height: 32.h),

              CustomTextField(
                controller: _confirmPasswordController,
                hintText: 'تأكيد كلمة المرور',
                showEyeIcon: true,
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) return "حقل مطلوب";
                  if (value!.length < 6) {
                    return 'تأكيد كلمة المرور';
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.h),
              DeleteAccountButton(
                formKey: _formKey,
                confirmPasswordController: _confirmPasswordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
