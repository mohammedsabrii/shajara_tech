import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_error_widget.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/get_profile_info_cubit/get_profile_info_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/profile_picture.dart';

class ProfileScreenProfilePictureBlocBuilder extends StatelessWidget {
  const ProfileScreenProfilePictureBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileInfoCubit, GetProfileInfoState>(
      builder: (context, state) {
        if (state is GetProfileInfoSuccess) {
          return Center(
            child: ProfilePicture(profileInfoEntity: state.profileInfoEntity),
          );
        } else if (state is GetProfileInfoFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicatorWidget();
        }
      },
    );
  }
}
