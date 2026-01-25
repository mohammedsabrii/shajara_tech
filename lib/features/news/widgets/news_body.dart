// ==================== Body ====================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/news/widgets/news_grid_screens.dart';
import 'package:shajara_tech/features/news/widgets/news_text_field.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          SizedBox(height: 24.h),
          const NewsGridSection(),
        ],
      ),
    );
  }
}
