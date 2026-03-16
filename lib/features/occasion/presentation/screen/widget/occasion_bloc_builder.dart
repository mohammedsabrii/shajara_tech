// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
// import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
// import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
// import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_grid_section.dart';

// class OccasionBlocBuilder extends StatelessWidget {
//   const OccasionBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetOccasionsCubit, GetOccasionsState>(
//       builder: (context, state) {
//         if (state is GetOccasionsSuccess) {
//           return OccasionGridSection(
//             occasionEntity: state.occasionEntity,
//             hasMore: state.hasMore,
//           );
//         } else if (state is GetOccasionsPaginationLoading) {
//           return OccasionGridSection(
//             occasionEntity: state.currentOccasions,
//             hasMore: true,
//           );
//         } else if (state is GetOccasionsFailure) {
//           return CustomErrorWidget(errorMessage: state.errorMessage);
//         } else {
//           return const CustomCircularProgressIndicatorWidget();
//         }
//       },
//     );
//   }
// }
