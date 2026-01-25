import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/join%20to%20family/presentation/screen/widget/join_to_family_screen_body.dart';

class JoinToFamilyScreen extends StatelessWidget {
  const JoinToFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(child: JoinToFamilyScreenBody()),
    );
  }
}
