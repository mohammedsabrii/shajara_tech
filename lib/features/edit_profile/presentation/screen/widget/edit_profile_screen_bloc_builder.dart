import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/edit_profile_info_cubit/edit_profile_info_cubit.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/edit_peofile_screen_body.dart';

class EditProfileScreenBlocBuilder extends StatelessWidget {
  const EditProfileScreenBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetProfileInfoCubit>()..getProfileInfo(),
        ),
        BlocProvider(create: (context) => sl<EditProfileInfoCubit>()),
      ],
      child: BlocBuilder<GetProfileInfoCubit, GetProfileInfoState>(
        builder: (context, state) {
          if (state is GetProfileInfoSuccess) {
            return EditProfileScreenBody(
              profileInfoEntity: state.profileInfoEntity,
            );
          } else if (state is GetProfileInfoFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const CustomCircularProgressIndicatorWidget();
          }
        },
      ),
    );
  }
}
