// ================= Section Widget =================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class AboutUsSection extends StatelessWidget {
  final String title;
  final String description;

  const AboutUsSection({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,

                style: AppTextStyles.styleAlmaraiBold16(
                  context,
                ).copyWith(color: AppColors.kTitleColor),
              ),
            ],
          ),
          SizedBox(height: 10.h),

          LayoutBuilder(
            builder: (context, constraints) {
              return Text(
                description,
                style: AppTextStyles.styleAlmaraiRegular12(
                  context,
                ).copyWith(color: AppColors.kDescriptionColor),
                textAlign: TextAlign.start,
                softWrap: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
