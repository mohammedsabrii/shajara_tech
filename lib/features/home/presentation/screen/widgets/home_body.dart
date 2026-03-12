import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/home_news_bloc_builder.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/home_occasion_bloc_builder.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/home_screen_app_bar.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/first_section.dart';

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
          const HomeOccasionBlocBuilder(),
          const HomeNewsBlocBuilder(),
        ],
      ),
    );
  }
}
