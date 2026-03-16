// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
// import 'package:shajara_tech/core/widgets/search_text_field.dart';
// import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
// import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_bloc_builder.dart';

// class OccasionBody extends StatefulWidget {
//   const OccasionBody({super.key});

//   @override
//   State<OccasionBody> createState() => _OccasionBodyState();
// }

// class _OccasionBodyState extends State<OccasionBody> {
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }

//   void _onScroll() {
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.offset;
//     if (currentScroll >= maxScroll - 200) {
//       context.read<GetOccasionsCubit>().loadMore();
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 10.h),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           child: LogoAppBar(onBackTap: () => Navigator.pop(context)),
//         ),
//         Expanded(
//           child: SingleChildScrollView(
//             controller: _scrollController,
//             child: Column(
//               children: [
//                 SizedBox(height: 24.h),
//                 const SearchTextField(),
//                 SizedBox(height: 24.h),
//                 const OccasionBlocBuilder(),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
