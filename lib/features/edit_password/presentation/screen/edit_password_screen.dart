import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/edit_password/presentation/manager/cubit/edit_password_cubit/edit_password_cubit.dart';
import 'package:shajara_tech/features/edit_password/presentation/screen/widget/edit_password_screen_body.dart';

class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<EditPasswordCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(
          child: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: const EditPasswordScreenBody(),
          ),
        ),
      ),
    );
  }
}
