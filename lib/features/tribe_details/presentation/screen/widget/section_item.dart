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
    return Container(
      width: 200.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: 132.h,
              width: 156,
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

          const SizedBox(height: 3),

          Row(
            children: [
              SvgPicture.asset(AppIcons.kLetsIconsDate),
              const SizedBox(width: 5),
              Text(date, style: AppTextStyles.styleAlmaraiRegular10(context)),
            ],
          ),
          const SizedBox(height: 1),

          SizedBox(
            width: 147.w,
            child: Text(
              title,
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.styleAlmaraiRegular10(context),
            ),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
