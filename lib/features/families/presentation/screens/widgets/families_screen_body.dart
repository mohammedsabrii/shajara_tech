import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/families/presentation/screens/widgets/families_grid_view.dart';
import 'package:shajara_tech/features/news/widgets/news_text_field.dart';

class FamiliesScreenBody extends StatelessWidget {
  const FamiliesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 11.h),
            Image.asset(
              AppImages.kShjaraTechIconpng2,
              height: 58.h,
              width: 123.w,
            ),
            SizedBox(height: 24.h),
            const SearchTextField(),
            SizedBox(height: 32.h),
            const FamiliesGridView(),
          ],
        ),
      ),
    );
  }
}
