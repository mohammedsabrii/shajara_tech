import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/200/140',
              height: 132.h,
              width: 156.w,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 140,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.image, size: 40, color: Colors.grey),
                ),
              ),
            ),
          ),

          SizedBox(height: 8.h),

          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.kLetsIconsDate),
                const SizedBox(width: 5),
                Text(
                  'الجمعة 17 مايو , 2025 ',
                  style: AppTextStyles.styleAlmaraiRegular10(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Text(
            'اللقاء العائلي لبني خالد العنصر',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.styleAlmaraiRegular10(context),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
