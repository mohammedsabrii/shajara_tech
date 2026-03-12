import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/home/presentation/manager/cubit/get_occasions_cubit/get_occasions_cubit.dart';
import 'package:shajara_tech/features/home/presentation/screen/widgets/occasions_section_with_items.dart';

class HomeOccasionBlocBuilder extends StatelessWidget {
  const HomeOccasionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOccasionsCubit, GetOccasionsState>(
      builder: (context, state) {
        if (state is GetOccasionsSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: OccasionsSectionWithItems(
              occasionEntity: state.occasionEntity,
            ),
          );
        } else if (state is GetOccasionsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
