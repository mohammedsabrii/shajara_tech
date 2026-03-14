import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
import 'package:shajara_tech/core/widgets/search_text_field.dart';
import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_bloc_builder.dart';

class OccasionBody extends StatelessWidget {
  const OccasionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: LogoAppBar(onBackTap: () => Navigator.pop(context)),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              const SearchTextField(),
              SizedBox(height: 24.h),
              const OccasionBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
