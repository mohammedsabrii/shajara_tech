// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/service/service_locator.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
// import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_body.dart';

// class OccasionScreen extends StatelessWidget {
//   const OccasionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => sl<GetOccasionsCubit>()..getOccasion(),
//       child: const Scaffold(
//         backgroundColor: AppColors.kbackGroundColor,

//         body: SafeArea(child: OccasionBody()),
//       ),
//     );
//   }
// }
