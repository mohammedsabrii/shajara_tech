// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';
// import 'package:shajara_tech/core/utils/app_icons.dart';
// import 'package:shajara_tech/core/utils/app_text_styles.dart';
// import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
// import 'package:shajara_tech/features/NewsDetails/domain/entity/news_details_entity.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/view/widgets/news_details_header.dart';
// import 'package:shajara_tech/features/NewsDetails/presentation/view/widgets/news_details_section.dart';

// class NewsDetailsBody extends StatelessWidget {
//   const NewsDetailsBody({super.key, required this.newsDetails});
//   final NewsDetailsEntity newsDetails;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16.h),
//             CustomAppBar(
//               title: newsDetails.newsTitle,
//               onBackTap: () => GoRouter.of(context).pop(),
//             ),
//             SizedBox(height: 32.h),
//             NewsDetailsHeaderImage(newsDetailsEntity: newsDetails),
//             SizedBox(height: 10.h),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 children: [
//                   Text(
//                     DateFormat(
//                       'EEEE dd MMMM , yyyy',
//                       'ar',
//                     ).format(newsDetails.newsDate),
//                     style: AppTextStyles.styleAlmaraiRegular10(context),
//                   ),
//                   const SizedBox(width: 5),
//                   SvgPicture.asset(AppIcons.kLetsIconsDate),
//                 ],
//               ),
//             ),
//             SizedBox(height: 32.h),
//             NewsDetailsSection(
//               title: newsDetails.newsShortDescription,
//               description: newsDetails.newsLongDescription,
//             ),
//             SizedBox(height: 24.h),
//           ],
//         ),
//       ),
//     );
//   }
// }
