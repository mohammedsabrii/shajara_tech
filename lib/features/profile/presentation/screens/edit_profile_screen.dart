import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/edit_peofile_screen_body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const SafeArea(child: EditProfileScreenBody()),
      ),
    );
  }
}
