import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/Families_details/presentation/screen/widget/families_details_screen_body.dart';

class FamiliesDetailsScreen extends StatelessWidget {
  const FamiliesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(child: FamiliesDetailsScreenBody()),
    );
  }
}
