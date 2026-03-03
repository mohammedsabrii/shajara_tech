import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/features/profile/presentation/manager/cubit/confirm_password_to_delete_account_cubit/confirm_password_to_delete_account_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/manager/cubit/delete_account_cubit/delete_account_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/detelet_account_screen_body.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<DeleteAccountCubit>()),
        BlocProvider(
          create: (context) => sl<ConfirmPasswordToDeleteAccountCubit>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.kbackGroundColor,
        body: SafeArea(
          child: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: const DeteletAccountScreenBody(),
          ),
        ),
      ),
    );
  }
}
