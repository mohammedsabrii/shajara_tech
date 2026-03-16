// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
// import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
// import 'package:shajara_tech/features/home/presentation/screen/widgets/section_with_tems.dart';
// import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';

// class HomeNewsBlocBuilder extends StatelessWidget {
//   const HomeNewsBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetNewsCubit, GetNewsState>(
//       builder: (context, state) {
//         if (state is GetNewsSuccess) {
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//             child: HomeNewsSectionWithItems(newsEntity: state.newsEntity),
//           );
//         } else if (state is GetNewsFailure) {
//           return CustomErrorWidget(errorMessage: state.errorMessage);
//         } else {
//           return const CustomCircularProgressIndicatorWidget();
//         }
//       },
//     );
//   }
// }
