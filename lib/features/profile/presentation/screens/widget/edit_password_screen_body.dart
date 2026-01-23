import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';

class EditPasswordScreenBody extends StatelessWidget {
  const EditPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            const CustomTextField(
              hintText: 'كلمة المرور القديمة',
              showEyeIcon: true,
              obscureText: true,
            ),
            SizedBox(height: 16.h),
            const CustomTextField(
              hintText: 'كلمة المرور الجديدة',
              showEyeIcon: true,
              obscureText: true,
            ),
            SizedBox(height: 16.h),
            const CustomTextField(
              hintText: 'تأكيد كلمة المرور الجديدة',
              showEyeIcon: true,
              obscureText: true,
            ),
            SizedBox(height: 40.h),
            const CustomButton(title: 'حفظ التغييرات'),
          ],
        ),
      ),
    );
  }
}
