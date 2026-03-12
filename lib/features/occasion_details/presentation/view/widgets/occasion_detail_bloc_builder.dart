import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/occasion_details/presentation/manager/cubit/get_occasion_cubit/occasion_details_cubit.dart';
import 'package:shajara_tech/features/occasion_details/presentation/view/widgets/occasion_details_body.dart';

class OccasionDetailBlocBuilder extends StatelessWidget {
  const OccasionDetailBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOccasionDetailsCubit, GetOccasionDetailsState>(
      builder: (context, state) {
        if (state is GetOccasionDetailsSuccess) {
          return OccasionDetailsBody(occasionDetails: state.occasionDetails);
        } else if (state is GetOccasionDetailsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
