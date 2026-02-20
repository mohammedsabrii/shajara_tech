import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/edit_password/presentation/manager/cubit/edit_password_cubit/edit_password_cubit.dart';

class EditPasswprdButton extends StatefulWidget {
  const EditPasswprdButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController oldPasswordController,
    required TextEditingController newPasswordController,
    required TextEditingController confirmNewPasswordController,
  }) : _formKey = formKey,
       _oldPasswordController = oldPasswordController,
       _newPasswordController = newPasswordController,
       _confirmNewPasswordController = confirmNewPasswordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _oldPasswordController;
  final TextEditingController _newPasswordController;
  final TextEditingController _confirmNewPasswordController;

  @override
  State<EditPasswprdButton> createState() => _EditPasswprdButtonState();
}

class _EditPasswprdButtonState extends State<EditPasswprdButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<EditPasswordCubit, EditPasswordState>(
      listener: (context, state) {
        if (state is EditPasswordSuccess) {
          isLoading = false;
          GoRouter.of(context).go(AppRouter.kLogInScreen);
          customShowSnackBar(context, title: 'تم تغيير كلمة السر بنجاح');
        } else if (state is EditPasswordFailure) {
          isLoading = false;
          customShowSnackBar(context, title: state.errorMessage);
        } else if (state is EditPasswordLoading) {
          isLoading = true;
        }
      },
      child: CustomButton(
        onTap: () {
          if (widget._formKey.currentState!.validate()) {
            context.read<EditPasswordCubit>().editPassword(
              oldPassword: widget._oldPasswordController.text.trim(),
              newPassword: widget._newPasswordController.text.trim(),
              confirmNewPassword: widget._confirmNewPasswordController.text
                  .trim(),
            );
          }
        },
        titleWidget: isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                'حفظ التغييرات',
                style: AppTextStyles.styleAlmaraiExtraBold14(
                  context,
                ).copyWith(color: Colors.white),
              ),
      ),
    );
  }
}
