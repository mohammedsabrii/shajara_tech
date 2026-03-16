// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shajara_tech/core/utils/app_images.dart';
// import 'package:shajara_tech/features/news/presentation/manager/cubit/cubit/get_news_cubit.dart';
// import 'package:shajara_tech/features/news/presentation/screen/widgets/news_bloc_builder.dart';
// import 'package:shajara_tech/core/widgets/search_text_field.dart';

// class NewsBody extends StatefulWidget {
//   const NewsBody({super.key});

//   @override
//   State<NewsBody> createState() => _NewsBodyState();
// }

// class _NewsBodyState extends State<NewsBody> {
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//     context.read<GetNewsCubit>().getNews();
//   }

//   void _onScroll() {
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.offset;
//     if (currentScroll >= maxScroll - 200) {
//       context.read<GetNewsCubit>().loadMore();
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       controller: _scrollController,

//       child: Column(
//         children: [
//           SizedBox(height: 11.h),
//           Image.asset(
//             AppImages.kShjaraTechIconpng2,
//             height: 58.h,
//             width: 123.w,
//           ),
//           SizedBox(height: 24.h),
//           const SearchTextField(),
//           SizedBox(height: 24.h),
//           const NewsBlocBuilder(),
//         ],
//       ),
//     );
//   }
// }
