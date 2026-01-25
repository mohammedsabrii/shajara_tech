import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shajara_tech/features/families/presentation/screens/widgets/families_screen_body.dart';

class FamiliesScreen extends StatelessWidget {
  const FamiliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(child: FamiliesScreenBody()),
    );
  }
}
