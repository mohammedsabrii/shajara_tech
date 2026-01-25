import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/Families_details/presentation/screen/widget/action_button.dart';

class FamilyCard extends StatelessWidget {
  const FamilyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: const DecorationImage(
                  image: AssetImage(AppImages.kTestImage4),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Positioned(
              right: 16,
              bottom: -30,
              child: Container(
                height: 84.h,
                width: 84.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: ClipOval(
                  child: Image.asset(AppImages.kTestImage3, fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 14.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ActionButton(
              onTap: () => GoRouter.of(context).push(AppRouter.kChatScreen),
              icon: AppIcons.kMessageIcon,
              color: Colors.white,
            ),
            SizedBox(width: 12.w),
            ActionButton(
              onTap: () =>
                  GoRouter.of(context).push(AppRouter.kJoinToFamilyScreen),
              icon: AppIcons.kAddIcon,
              color: AppColors.kPrimaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
