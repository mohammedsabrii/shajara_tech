import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/home_screen_app_bar.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/first_section.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/occasions_section_with_items.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/section_with_tems.dart';
import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';

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

class HomeNewsBlocBuilder extends StatelessWidget {
  const HomeNewsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: HomeNewsSectionWithItems(newsEntity: state.newsEntity),
          );
        } else if (state is GetNewsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}

class HomeOccasionBlocBuilder extends StatelessWidget {
  const HomeOccasionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOccasionsCubit, GetOccasionsState>(
      builder: (context, state) {
        if (state is GetOccasionsSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: OccasionsSectionWithItems(
              occasionEntity: state.occasionEntity,
            ),
          );
        } else if (state is GetOccasionsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
