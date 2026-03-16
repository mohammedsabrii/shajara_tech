// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';
// import 'package:shajara_tech/features/news/presentation/screen/widgets/news_section_item.dart';

// class NewsGridSection extends StatelessWidget {
//   const NewsGridSection({
//     super.key,
//     required this.newsEntity,
//     required this.hasMore,
//   });

//   final List<NewsEntity> newsEntity;
//   final bool hasMore;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: newsEntity.length + (hasMore ? 1 : 0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           childAspectRatio: 0.75,
//         ),
//         itemBuilder: (context, index) {
//           if (index == newsEntity.length) {
//             return const Center(
//               child: CircularProgressIndicator(color: AppColors.kPrimaryColor),
//             );
//           }
//           return NewsSectionItem(newsEntity: newsEntity[index]);
//         },
//       ),
//     );
//   }
// }
