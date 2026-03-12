import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/edit_profile_picture_cubit/edit_profile_picture_cubit.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/edit_profile_screen_bloc_builder.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackGroundColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),

          child: BlocProvider(
            create: (context) => sl<EditProfilePictureCubit>(),
            child: const EditProfileScreenBlocBuilder(),
          ),
        ),
      ),
    );
  }
}
