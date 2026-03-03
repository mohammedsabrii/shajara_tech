import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/profile/presentation/manager/cubit/confirm_password_to_delete_account_cubit/confirm_password_to_delete_account_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/delete_dialog_details.dart';

class DeleteAccountButton extends StatefulWidget {
  const DeleteAccountButton({
    super.key,
    required this.formKey,
    required this.confirmPasswordController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController confirmPasswordController;
  @override
  State<DeleteAccountButton> createState() => _DeleteAccountButtonState();
}

class _DeleteAccountButtonState extends State<DeleteAccountButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<
      ConfirmPasswordToDeleteAccountCubit,
      ConfirmPasswordToDeleteAccountState
    >(
      listener: (context, state) {
        if (state is ConfirmPasswordToDeleteAccountSuccess) {
          setState(() {
            isLoading = false;
          });
          showDialog(
            context: context,
            builder: (context) => const DeleteDialogDetails(),
          );
        } else if (state is ConfirmPasswordToDeleteAccountFailure) {
          setState(() {
            isLoading = false;
          });
          customShowSnackBar(context, title: state.errorMessage);
        } else if (state is ConfirmPasswordToDeleteAccountLoading) {
          setState(() {
            isLoading = true;
          });
        }
      },
      child: CustomButton(
        onTap: () {
          if (widget.formKey.currentState!.validate()) {
            context
                .read<ConfirmPasswordToDeleteAccountCubit>()
                .confirmPasswordToDeleteAccount(
                  password: widget.confirmPasswordController.text.trim(),
                );
          }
        },
        titleWidget: isLoading
            ? const Center(
                child: CircularProgressIndicator(color: Colors.white),
              )
            : Text(
                'حذق',
                style: AppTextStyles.styleAlmaraiExtraBold14(
                  context,
                ).copyWith(color: Colors.white),
              ),
      ),
    );
  }
}
