import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/widgets/tribes_bloc_builder.dart';
import 'package:shajara_tech/features/news/presentation/screen/widgets/news_text_field.dart';

class TribesScreenBody extends StatelessWidget {
  const TribesScreenBody({super.key});

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
          SizedBox(height: 32.h),
          const TribesBlocBuilder(),
        ],
      ),
    );
  }
}
