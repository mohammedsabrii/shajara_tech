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
  late GoRouter _router;

  int _getCurrentIndex(String location) {
    if (location == AppRouter.kHomeScreen) return 0;
    if (location == AppRouter.kAboutUsScreen) return 1;
    // if (location == AppRouter.kNewsScreen) return 2;
    if (location == AppRouter.kFamiliesScreen) return 3;
    if (location == AppRouter.kProfileScreen) return 4;
    return 0;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _router = GoRouter.of(context);
    _router.routerDelegate.addListener(_onRouteChanged);
  }

  void _onRouteChanged() {
    setState(() {});
  }

  void _navigate(String route, int index) {
    final location = GoRouterState.of(context).uri.path;
    final currentIndex = _getCurrentIndex(location);

    if (currentIndex == index) return;

    if (index == 0) {
      _router.go(route);
    } else {
      _router.push(route);
    }
  }

  @override
  void dispose() {
    _router.routerDelegate.removeListener(_onRouteChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    final selectedIndex = _getCurrentIndex(location);

    return Container(
      height: 64.h,
      padding: EdgeInsets.only(top: 5.h),
      decoration: const BoxDecoration(
        color: AppColors.kbackGroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            title: 'الرئيسية',
            activeIcon: AppIcons.kNavBarHomeIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveHomeIcon,
            isActive: selectedIndex == 0,
            onTap: () => _navigate(AppRouter.kHomeScreen, 0),
          ),
          BottomNavItem(
            title: 'من نحن',
            activeIcon: AppIcons.kNavBarAboutIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveAboutIcon,
            isActive: selectedIndex == 1,
            onTap: () => _navigate(AppRouter.kAboutUsScreen, 1),
          ),
          // BottomNavItem(
          //   title: 'الأخبار',
          //   activeIcon: AppIcons.kNavBarNewsIcon,
          //   unActiveIcon: AppIcons.kNavBarUnActiveNewsIcon,
          //   isActive: selectedIndex == 2,
          //   onTap: () =>
          //       _navigate(AppRouter.kNewsScreen, 2),
          // ),
          BottomNavItem(
            title: 'العائلات',
            activeIcon: AppIcons.kNavBarFamiliesIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveFamiliesIcon,
            isActive: selectedIndex == 3,
            onTap: () => _navigate(AppRouter.kFamiliesScreen, 3),
          ),
          BottomNavItem(
            title: 'الحساب',
            activeIcon: AppIcons.kNavBarProfileIcon,
            unActiveIcon: AppIcons.kNavBarUnActiveProfileIcon,
            isActive: selectedIndex == 4,
            onTap: () => _navigate(AppRouter.kProfileScreen, 4),
          ),
        ],
      ),
    );
  }
}
