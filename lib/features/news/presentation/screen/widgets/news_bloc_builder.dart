// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
// import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
// import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';
// import 'package:shajara_tech/features/news/presentation/screen/widgets/news_grid_screens.dart';

// class NewsBlocBuilder extends StatelessWidget {
//   const NewsBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetNewsCubit, GetNewsState>(
//       builder: (context, state) {
//         if (state is GetNewsSuccess) {
//           return NewsGridSection(
//             newsEntity: state.newsEntity,
//             hasMore: state.hasMore,
//           );
//         } else if (state is GetNewsPaginationLoading) {
//           return NewsGridSection(newsEntity: state.currentNews, hasMore: true);
//         } else if (state is GetNewsFailure) {
//           return CustomErrorWidget(errorMessage: state.errorMessage);
//         } else {
//           return const CustomCircularProgressIndicatorWidget();
//         }
//       },
//     );
//   }
// }
