import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';

class TribeItem extends StatelessWidget {
  const TribeItem({super.key, required this.tribesEntity});
  final TribesEntity tribesEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(
        context,
      ).push(AppRouter.kTribeDetailsScreen, extra: tribesEntity),
      child: Container(
        width: 156.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                tribesEntity.tribeCoverImage ?? 'https://picsum.photos/200/140',
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

            Text(
              tribesEntity.tribeName,
              style: AppTextStyles.styleAlmaraiRegular12(
                context,
              ).copyWith(color: AppColors.kTitleColor),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
