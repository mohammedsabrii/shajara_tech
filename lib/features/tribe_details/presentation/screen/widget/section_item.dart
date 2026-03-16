import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    required this.title,
    required this.date,
    required this.imageUrl,
  });

  final String title;
  final String date;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.network(
            imageUrl,
            height: 132.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 6.h),

        Row(
          children: [
            SvgPicture.asset(AppIcons.kLetsIconsDate),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                date,
                style: AppTextStyles.styleAlmaraiRegular10(context),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),

        SizedBox(height: 4.h),

        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.styleAlmaraiRegular10(context),
        ),
      ],
    );
  }
}
