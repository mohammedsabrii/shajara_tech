import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/features/tribes/presentation/manager/cubits/get_tribes_cubit/get_tribes_cubit.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/widgets/tribes_bloc_builder.dart';
import 'package:shajara_tech/core/widgets/search_text_field.dart';

class TribesScreenBody extends StatefulWidget {
  const TribesScreenBody({super.key});

  @override
  State<TribesScreenBody> createState() => _TribesScreenBodyState();
}

class _TribesScreenBodyState extends State<TribesScreenBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    if (currentScroll >= maxScroll - 200) {
      context.read<GetTribesCubit>().loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          SizedBox(height: 11.h),
          Image.asset(
            AppImages.kShjaraTechIconpng2,
            height: 58.h,
            width: 123.w,
          ),
          SizedBox(height: 24.h),
          const SearchTextField(),
          SizedBox(height: 32.h),
          const TribesBlocBuilder(),
        ],
      ),
    );
  }
}
