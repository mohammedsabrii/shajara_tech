import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/home_body.dart';
import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';

class HomeeScreen extends StatelessWidget {
  const HomeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetOccasionsCubit>()..getOccasion(),
        ),
        BlocProvider(create: (context) => sl<GetNewsCubit>()..getNews()),
      ],
      child: const Scaffold(
        bottomNavigationBar: CustomBottomNavBar(),
        backgroundColor: AppColors.kbackGroundColor,

        body: SafeArea(child: HomeBody()),
      ),
    );
  }
}
