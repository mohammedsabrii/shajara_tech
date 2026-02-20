import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/occasion_section_item.dart';

class OccasionsSectionWithItems extends StatelessWidget {
  const OccasionsSectionWithItems({super.key, required this.occasionEntity});
  final List<OccasionEntity> occasionEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'المناسبات القادمة القبائل',
              style: AppTextStyles.styleAlmaraiBold16(context),
            ),
            Text(
              'عرض الكل',
              style: AppTextStyles.styleAlmaraiRegular10(
                context,
              ).copyWith(color: AppColors.kPrimaryColor),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 14.w),
            itemCount: occasionEntity.length,
            itemBuilder: (context, index) => Expanded(
              child: HomeOccasionSectionItem(
                newsTitle: occasionEntity[index].occasionTitle,
                date: occasionEntity[index].occasionTime,
              ),
            ),
          ),
        ),

        SizedBox(height: 24.h),
      ],
    );
  }
}
