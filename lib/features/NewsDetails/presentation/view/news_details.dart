// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shajara_tech/core/service/service_locator.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/manager/cubit/cubit/news_details_cubit.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/view/widgets/news_detail_bloc_builder.dart';
// import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';

// class NewsDetailsScreen extends StatelessWidget {
//   const NewsDetailsScreen({super.key, required this.newsEntity});
//   final NewsEntity newsEntity;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           sl<GetNewsDetailsCubit>()..getNewsDetails(newsEntity.newsId),
//       child: const Scaffold(
//         backgroundColor: AppColors.kbackGroundColor,

//         body: SafeArea(child: NewsDetailBlocBuilder()),
//       ),
//     );
//   }
// }
