import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_bottom_nav_bar.dart';
import 'package:shajara_tech/features/tribes/presentation/manager/cubits/get_tribes_cubit/get_tribes_cubit.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/widgets/tribes_screen_body.dart';

class TribesScreen extends StatelessWidget {
  const TribesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetTribesCubit>()..getTribes(),
      child: const Scaffold(
        bottomNavigationBar: SafeArea(child: CustomBottomNavBar()),
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(child: TribesScreenBody()),
      ),
    );
  }
}
