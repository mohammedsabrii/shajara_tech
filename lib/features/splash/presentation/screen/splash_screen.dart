import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/auth/data/data_sources/auth_local_data_source.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _checkAuth();
  }

  Future<void> _checkAuth() async {
    await Future.delayed(const Duration(seconds: 3));
    final localDataSource = sl<AuthLocalDataSource>();

    final isLoggedIn = await localDataSource.isLoggedIn();

    if (isLoggedIn) {
      GoRouter.of(context).go(AppRouter.kHomeScreen);
    } else {
      GoRouter.of(context).go(AppRouter.kLogInScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kTitleColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.kSplashScreen),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
