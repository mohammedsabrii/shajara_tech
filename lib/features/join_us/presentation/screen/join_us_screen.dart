import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/join_us/presentation/manager/cubit/join_us_cubit/join_us_cubit.dart';
import 'package:shajara_tech/features/join_us/presentation/screen/widget/join_us_screen_body.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<JoinUsCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: JoinUsScreenBody(tribesDetailsEntity: tribesDetailsEntity),
          ),
        ),
      ),
    );
  }
}
