import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_date_picker_field.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/custom_gender_dropdown.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/edit_profile_picture.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          CustomAppBar(
            title: 'تعديل الحساب الشخصي',
            onBackTap: () => GoRouter.of(context).pop(),
          ),
          SizedBox(height: 16.h),
          const EditProfilePicture(),
          SizedBox(height: 32.h),
          const CustomTextField(hintText: 'عبدالرحمن محمد'),
          SizedBox(height: 16.h),
          const CustomTextField(hintText: 'مبرمج'),
          SizedBox(height: 16.h),
          const CustomDatePickerField(hintText: '20/10/2000'),
          SizedBox(height: 16.h),
          const CustomDropDownFiled(),
          SizedBox(height: 16.h),
          const CustomTextField(hintText: '01234567890'),
          SizedBox(height: 40.h),
          const CustomButton(title: 'حفظ التغييرات'),
        ],
      ),
    );
  }
}
