// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/service/service_locator.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
// import 'package:shajara_tech/features/occasion_details/presentation/manager/cubit/get_occasion_cubit/occasion_details_cubit.dart';
// import 'package:shajara_tech/features/occasion_details/presentation/view/widgets/occasion_detail_bloc_builder.dart';

// class OccasionDetailsScreen extends StatelessWidget {
//   const OccasionDetailsScreen({super.key, required this.occasionEntity});
//   final OccasionEntity occasionEntity;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           sl<GetOccasionDetailsCubit>()
//             ..getOccasionDetails(occasionEntity.occasionId),
//       child: const Scaffold(
//         backgroundColor: AppColors.kbackGroundColor,

//         body: SafeArea(child: OccasionDetailBlocBuilder()),
//       ),
//     );
//   }
// }
