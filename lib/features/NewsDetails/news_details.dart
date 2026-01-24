import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/NewsDetails/widgets/news_details_body.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_body.dart';

// ================= About Us Screen =================
class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kbackGroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'من نحن',
          style: AppTextStyles.styleAlmaraiBold18(
            context,
          ).copyWith(color: AppColors.kTitleColor),
        ),
      ),
      body: const NewsDetailsBody(),
    );
  }
}
