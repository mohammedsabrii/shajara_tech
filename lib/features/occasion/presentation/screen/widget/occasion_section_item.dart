// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shajara_tech/core/routes/app_router.dart';
// import 'package:shajara_tech/core/utils/app_icons.dart';
// import 'package:shajara_tech/core/utils/app_text_styles.dart';
// import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';

// class OccasionSectionItem extends StatelessWidget {
//   const OccasionSectionItem({super.key, required this.occasionEntity});
//   final OccasionEntity occasionEntity;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => GoRouter.of(
//         context,
//       ).push(AppRouter.kOccasionDetailsScreen, extra: occasionEntity),
//       child: Container(
//         width: 156.w,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.network(
//                 occasionEntity.imageUrl,
//                 height: 132.h,
//                 width: 156.w,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, error, stackTrace) => Container(
//                   height: 140,
//                   color: Colors.grey[300],
//                   child: const Center(
//                     child: Icon(Icons.image, size: 40, color: Colors.grey),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 8.h),

//             Row(
//               children: [
//                 SvgPicture.asset(AppIcons.kLetsIconsDate),
//                 const SizedBox(width: 5),
//                 Text(
//                   occasionEntity.occasionTime,
//                   style: AppTextStyles.styleAlmaraiRegular10(context),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 1),
//             Text(
//               occasionEntity.occasionTitle,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: AppTextStyles.styleAlmaraiRegular10(context),
//             ),
//             const SizedBox(height: 6),
//           ],
//         ),
//       ),
//     );
//   }
// }
