import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/section_item.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/tribe_details_app_bar.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/tribe_card.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class TribeDetailsScreenBody extends StatelessWidget {
  const TribeDetailsScreenBody({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            TribeDetailsAppBar(tribesDetailsEntity: tribesDetailsEntity),
            SizedBox(height: 32.h),
            TribeCard(tribesDetailsEntity: tribesDetailsEntity),
            SizedBox(height: 17.h),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12.r),
              child: Image.asset(
                AppImages.kTestImage5,
                fit: BoxFit.fill,
                height: 158.h,
                width: 327.w,
              ),
            ),
            SizedBox(height: 28.h),
            const SectionWithItems(title: 'المناسبات القادمة لقبيلة بني خالد'),
            SizedBox(height: 28.h),
            const SectionWithItems(title: 'مقالات وأخبار قبيلة بني خالد'),
          ],
        ),
      ),
    );
  }
}
