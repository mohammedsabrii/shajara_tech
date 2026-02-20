import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/tribe_details_screen_body.dart';
import 'package:shajara_tech/features/tribe_details/presentation/manager/cubit/get_tribe_details_cubit/get_tribe_details_cubit.dart';

class TribeDetailsBlocBuilder extends StatelessWidget {
  const TribeDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTribeDetailsCubit, GetTribeDetailsState>(
      builder: (context, state) {
        if (state is GetTribeDetailsSuccess) {
          return TribeDetailsScreenBody(
            tribesDetailsEntity: state.tribeDetails,
          );
        } else if (state is GetTribeDetailsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
