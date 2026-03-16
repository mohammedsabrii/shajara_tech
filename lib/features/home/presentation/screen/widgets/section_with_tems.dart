// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shajara_tech/core/routes/app_router.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/core/utils/app_text_styles.dart';
// import 'package:shajara_tech/features/home/presentation/screen/widgets/news_section_item.dart';
// import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';

// class HomeNewsSectionWithItems extends StatelessWidget {
//   const HomeNewsSectionWithItems({super.key, required this.newsEntity});
//   final List<NewsEntity> newsEntity;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'مقالات وأخبار القبائل',
//               style: AppTextStyles.styleAlmaraiBold16(context),
//             ),
//             GestureDetector(
//               onTap: () => GoRouter.of(context).push(AppRouter.kNewsScreen),
//               child: Text(
//                 'عرض الكل',
//                 style: AppTextStyles.styleAlmaraiRegular10(
//                   context,
//                 ).copyWith(color: AppColors.kPrimaryColor),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 16.h),
//         SizedBox(
//           height: 200,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.only(left: 14.w),
//             itemCount: newsEntity.length,
//             itemBuilder: (context, index) => GestureDetector(
//               onTap: () => GoRouter.of(
//                 context,
//               ).push(AppRouter.kNewsDetailsScreen, extra: newsEntity[index]),
//               child: HomeNewsSectionItem(
//                 imageUrl: newsEntity[index].newsImage,
//                 newsTitle: newsEntity[index].newsTitle,
//                 date: newsEntity[index].newsDate,
//               ),
//             ),
//           ),
//         ),

//         SizedBox(height: 24.h),
//       ],
//     );
//   }
// }
