import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/occasion_details/domain/entity/occasion_details_entity.dart';
import 'package:shajara_tech/features/occasion_details/presentation/view/widgets/Occasion_details_header.dart';
import 'package:shajara_tech/features/occasion_details/presentation/view/widgets/occasion_details_section.dart';

class OccasionDetailsBody extends StatelessWidget {
  const OccasionDetailsBody({super.key, required this.occasionDetails});
  final OccasionDetailsEntity occasionDetails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            CustomAppBar(
              title: occasionDetails.occasionTitle,
              onBackTap: () => GoRouter.of(context).pop(),
            ),
            SizedBox(height: 32.h),
            OccasionDetailsHeaderImage(occasionDetails: occasionDetails),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    occasionDetails.occasionTime,
                    style: AppTextStyles.styleAlmaraiRegular10(context),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(AppIcons.kLetsIconsDate),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            OccasionDetailsSection(
              title: occasionDetails.occasionDescription,
              description: occasionDetails.occasionLocation,
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
