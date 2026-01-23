import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';

class ContactUsScreenBody extends StatelessWidget {
  const ContactUsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11.h),
            LogoAppBar(onBackTap: () => Navigator.pop(context)),
            SizedBox(height: 53.h),
            Text(
              'تواصل معنا',
              style: AppTextStyles.styleAlmaraiBold18(context),
            ),
            SizedBox(height: 8.h),
            Text(
              'نسعد بتواصلك معنا للإجابة على استفساراتك أو استقبال مقترحاتك في أي وقت.',
              style: AppTextStyles.styleAlmaraiRegular12(
                context,
              ).copyWith(color: Colors.grey),
            ),
            SizedBox(height: 28.h),
            const CustomTextField(hintText: 'الإسم بالكامل'),
            SizedBox(height: 16.h),
            const CustomTextField(hintText: 'البريد الالكتروني'),
            SizedBox(height: 16.h),
            const CustomTextField(hintText: 'الموضوع'),
            SizedBox(height: 16.h),
            CustomTextField(hintText: 'الرسالة', heightTextfield: 137.h),
            SizedBox(height: 40.h),
            const CustomButton(title: 'إرسال'),
          ],
        ),
      ),
    );
  }
}
