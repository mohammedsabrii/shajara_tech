// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shajara_tech/core/utils/app_colors.dart';
// import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
// import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_section_item.dart';

// class OccasionGridSection extends StatelessWidget {
//   const OccasionGridSection({
//     super.key,
//     required this.occasionEntity,
//     required this.hasMore,
//   });

//   final List<OccasionEntity> occasionEntity;
//   final bool hasMore;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: occasionEntity.length + (hasMore ? 1 : 0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           childAspectRatio: 0.75,
//         ),
//         itemBuilder: (context, index) {
//           if (index == occasionEntity.length) {
//             return const Center(
//               child: CircularProgressIndicator(color: AppColors.kPrimaryColor),
//             );
//           }
//           return OccasionSectionItem(occasionEntity: occasionEntity[index]);
//         },
//       ),
//     );
//   }
// }
