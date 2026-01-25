import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/widgets/bottom_nav_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: const BoxDecoration(
        color: AppColors.kbackGroundColor,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            activeIcon: AppIcons.kNavBarHomeIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveHomeIcon,
            title: 'الرئيسية',
            isActive: selectedIndex == 0,
            onTap: () {
              setState(() => selectedIndex = 0);
              GoRouter.of(context).go(AppRouter.kHomeScreen);
            },
          ),
          BottomNavItem(
            activeIcon: AppIcons.kNavBarAboutIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveAboutIcon,
            title: 'من نحن',
            isActive: selectedIndex == 1,
            onTap: () {
              setState(() => selectedIndex = 1);
              GoRouter.of(context).go(AppRouter.kAboutUsScreen);
            },
          ),
          BottomNavItem(
            activeIcon: AppIcons.kNavBarNewsIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveNewsIcon,
            title: 'الأخبار',
            isActive: selectedIndex == 2,
            onTap: () {
              setState(() => selectedIndex = 2);
              GoRouter.of(context).go(AppRouter.kNewsScreen);
            },
          ),
          BottomNavItem(
            activeIcon: AppIcons.kNavBarFamiliesIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveFamiliesIcon,
            title: 'العائلات',
            isActive: selectedIndex == 3,
            onTap: () {
              setState(() => selectedIndex = 3);
              GoRouter.of(context).go(AppRouter.kFamiliesScreen);
            },
          ),
          BottomNavItem(
            activeIcon: AppIcons.kNavBarProfileIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveProfileIcon,
            title: 'الحساب',
            isActive: selectedIndex == 4,
            onTap: () {
              setState(() {
                selectedIndex = 4;
              });
              GoRouter.of(context).push(AppRouter.kProfileScreen);
            },
          ),
        ],
      ),
    );
  }
}
