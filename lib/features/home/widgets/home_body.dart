// ==================== Home Body ====================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/features/home/widgets/home_screen_app_bar.dart';
import 'package:shajara_tech/features/home/widgets/first_section.dart';
import 'package:shajara_tech/features/home/widgets/section_withI_tems.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 11.h),
          const HomeScreenAppBar(),
          SizedBox(height: 24.h),
          const FirstSection(),
          SizedBox(height: 28.h),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SectionWithItems(title: 'المناسبات القادمة القبائل'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SectionWithItems(title: 'مقالات وأخبار القبائل'),
          ),
        ],
      ),
    );
  }
}
