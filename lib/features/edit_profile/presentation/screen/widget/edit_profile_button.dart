import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/edit_profile_info_cubit/edit_profile_info_cubit.dart';

class EditProfileButton extends StatefulWidget {
  const EditProfileButton({
    super.key,

    required this.originalProfileInfo,
    required this.editUserNameController,
    required this.editUserJopController,
    required this.editDateOfBirthController,
    required this.editUserLifeStatusController,
    required this.editUserPhoneNumperController,
  });

  final TextEditingController editUserNameController;
  final TextEditingController editUserJopController;
  final TextEditingController editDateOfBirthController;
  final TextEditingController editUserLifeStatusController;
  final TextEditingController editUserPhoneNumperController;
  final ProfileInfoEntity originalProfileInfo;

  @override
  State<EditProfileButton> createState() => _EditProfileButtonState();
}

class _EditProfileButtonState extends State<EditProfileButton> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileInfoCubit, EditProfileInfoState>(
      listener: (context, state) {
        if (state is EditProfileInfoFailure) {
          customShowSnackBar(context, title: state.errorMessage);
        } else if (state is EditProfileInfoSuccess) {
          customShowSnackBar(context, title: 'تم تعديل الملف الشخصي بنجاح');
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        final isLoading = state is EditProfileInfoLoading;

        return CustomButton(
          onTap: isLoading
              ? null
              : () {
                  final userName =
                      widget.editUserNameController.text.trim().isEmpty
                      ? widget.originalProfileInfo.userName
                      : widget.editUserNameController.text.trim();

                  final userJop =
                      widget.editUserJopController.text.trim().isEmpty
                      ? widget.originalProfileInfo.userJop
                      : widget.editUserJopController.text.trim();

                  final dateOfBirth =
                      widget.editDateOfBirthController.text.isEmpty
                      ? widget.originalProfileInfo.dateOfBirth
                      : DateTime.parse(widget.editDateOfBirthController.text);

                  final userLifeStatus =
                      widget.editUserLifeStatusController.text.trim().isEmpty
                      ? widget.originalProfileInfo.userLifeStatus
                      : widget.editUserLifeStatusController.text.trim();

                  final userPhoneNumper =
                      widget.editUserPhoneNumperController.text.trim().isEmpty
                      ? widget.originalProfileInfo.userPhoneNumper
                      : widget.editUserPhoneNumperController.text.trim();

                  context.read<EditProfileInfoCubit>().editProfile(
                    userName: userName,
                    userJop: userJop,
                    dateOfBirth: dateOfBirth,
                    userLifeStatus: userLifeStatus,
                    userPhoneNumper: userPhoneNumper,
                  );
                },
          titleWidget: isLoading
              ? const CustomCircularProgressIndicatorWidget(color: Colors.white)
              : Text(
                  'حفظ التغييرات',
                  style: AppTextStyles.styleAlmaraiExtraBold14(
                    context,
                  ).copyWith(color: Colors.white),
                ),
        );
      },
    );
  }
}
