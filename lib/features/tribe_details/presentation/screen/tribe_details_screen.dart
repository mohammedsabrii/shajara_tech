import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/tribe_details_bloc_builder.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribe_details/presentation/manager/cubit/get_tribe_details_cubit/get_tribe_details_cubit.dart';

class TribeDetailsScreen extends StatelessWidget {
  const TribeDetailsScreen({super.key, required this.tribesEntity});
  final TribesEntity tribesEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<GetTribeDetailsCubit>()
            ..getTribeDetails(tribeId: tribesEntity.tribeId ?? 10),
      child: const Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(child: TribeDetailsBlocBuilder()),
      ),
    );
  }
}
