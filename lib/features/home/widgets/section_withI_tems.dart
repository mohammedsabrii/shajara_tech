// ==================== Section With Items ====================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/home/widgets/section_item.dart';

class SectionWithItems extends StatelessWidget {
  final String title;

  const SectionWithItems({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'عرض الكل',
              style: AppTextStyles.styleAlmaraiRegular10(
                context,
              ).copyWith(color: AppColors.kPrimaryColor),
            ),
            Text(title, style: AppTextStyles.styleAlmaraiBold16(context)),
          ],
        ),
        const SizedBox(height: 16),

        Row(
          children: [
            Expanded(child: SectionItem()),
            SizedBox(width: 12),
            Expanded(child: SectionItem()),
          ],
        ),
      ],
    );
  }
}
