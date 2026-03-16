// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
// import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/manager/cubit/cubit/news_details_cubit.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/view/widgets/news_details_body.dart';

// class NewsDetailBlocBuilder extends StatelessWidget {
//   const NewsDetailBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetNewsDetailsCubit, GetNewsDetailsState>(
//       builder: (context, state) {
//         if (state is GetNewsDetailsSuccess) {
//           return NewsDetailsBody(newsDetails: state.newsDetails);
//         } else if (state is GetNewsDetailsFailure) {
//           return CustomErrorWidget(errorMessage: state.errorMessage);
//         } else {
//           return const CustomCircularProgressIndicatorWidget();
//         }
//       },
//     );
//   }
// }
