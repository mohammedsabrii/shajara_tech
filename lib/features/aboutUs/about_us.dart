import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_body.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(child: AboutUsBody()),
    );
  }
}
