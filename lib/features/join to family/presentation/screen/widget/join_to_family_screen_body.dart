import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_date_picker_field.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/custom_gender_dropdown.dart';

class JoinToFamilyScreenBody extends StatelessWidget {
  const JoinToFamilyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            SizedBox(height: 18.h),
            CustomAppBar(
              title: 'الانضمام لعائلة بني خالد',
              onBackTap: () => GoRouter.of(context).pop(),
            ),
            SizedBox(height: 32.h),
            const CustomTextField(hintText: 'الإسم بالكامل'),
            SizedBox(height: 16.h),
            const CustomTextField(hintText: 'الوظيفة'),
            SizedBox(height: 16.h),
            const CustomDatePickerField(hintText: '20/10/2000'),
            SizedBox(height: 16.h),
            const CustomDropDownFiled(),
            SizedBox(height: 16.h),
            const CustomTextField(hintText: 'رقم الموبايل'),
            SizedBox(height: 16.h),
            CustomTextField(hintText: 'الرسالة', heightTextfield: 137.h),
            SizedBox(height: 40.h),
            const CustomButton(title: 'إرسال الطلب'),
          ],
        ),
      ),
    );
  }
}
