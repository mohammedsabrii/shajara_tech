import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/news/presentation/screen/widgets/section_item.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribe_occasion_entity.dart';

class OccasionSectionWithItems extends StatelessWidget {
  final String title;
  final List<TribeOccasionEntity>? occasionEntity;

  const OccasionSectionWithItems({
    super.key,
    required this.title,
    this.occasionEntity,
  });

  @override
  Widget build(BuildContext context) {
    if (occasionEntity == null || occasionEntity!.isEmpty) {
      return const SizedBox.shrink();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.styleAlmaraiBold16(context)),
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
            height: 190.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 14.w),
              itemCount: occasionEntity?.length,
              itemBuilder: (context, index) => Expanded(
                child: SectionItem(
                  title: occasionEntity?[index].tribeOccasionTitle ?? '',
                  date: occasionEntity?[index].tribeOccasionDate ?? '',
                  imageUrl:
                      occasionEntity?[index].tribeOccasionCoverImage ??
                      'https://picsum.photos/200/140',
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
