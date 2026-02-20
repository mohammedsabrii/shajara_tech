import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/tribes/presentation/manager/cubits/get_tribes_cubit/get_tribes_cubit.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/widgets/tribes_grid_view.dart';

class TribesBlocBuilder extends StatelessWidget {
  const TribesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTribesCubit, GetTribesState>(
      builder: (context, state) {
        if (state is GetTribesSuccess) {
          return TribesGridView(tribesEntity: state.tribes);
        } else if (state is GetTribesFaliure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
