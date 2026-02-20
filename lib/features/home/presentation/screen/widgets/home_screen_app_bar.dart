import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Image.asset(
            AppImages.kShjaraTechIconpng2,
            height: 58.h,
            width: 123.w,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () =>
                GoRouter.of(context).push(AppRouter.kNotificationScreen),
            child: SvgPicture.asset(AppIcons.kNotificationIcon),
          ),
        ],
      ),
    );
  }
}
