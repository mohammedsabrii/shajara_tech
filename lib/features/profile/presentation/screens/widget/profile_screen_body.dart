import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/profile_item.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/profile_picture.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.h),
          CustomAppBar(
            title: 'الحساب الشخصي',
            onBackTap: () => GoRouter.of(context).pop(),
          ),
          SizedBox(height: 18.h),
          const Center(child: ProfilePicture()),
          SizedBox(height: 32.h),
          const ProfileItem(
            title: 'الحساب الشخصي',
            icon: AppIcons.kProfileIcon,
          ),
          SizedBox(height: 20.h),
          const ProfileItem(title: 'كلمة المرور', icon: AppIcons.kPasswordIcon),
          SizedBox(height: 20.h),
          const ProfileItem(title: 'تواصل معنا', icon: AppIcons.kContactUsIcon),
          SizedBox(height: 20.h),
          const ProfileItem(
            title: 'الانضمام الينا',
            icon: AppIcons.kJoinUsIcon,
          ),
          SizedBox(height: 20.h),
          const ProfileItem(
            title: 'حذف الحساب',
            icon: AppIcons.kDeleteAccountIcon,
          ),
          SizedBox(height: 20.h),
          const ProfileItem(
            title: 'الذهاب الي لوحة التحكم',
            icon: AppIcons.kGoToControllerIcon,
          ),
        ],
      ),
    );
  }
}
