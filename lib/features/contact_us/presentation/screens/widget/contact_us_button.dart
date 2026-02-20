import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/contact_us/presentation/manager/cubit/contact_us_cubit/contact_us_cubit.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.nameController,
    required this.subjectController,
    required this.messageController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController subjectController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactUsCubit, ContactUsState>(
      listener: (context, state) {
        if (state is ContactUsFailure) {
          customShowSnackBar(context, title: state.errorMessage);
        } else if (state is ContactUsSuccess) {
          customShowSnackBar(context, title: 'تم الارسال بنجاح');
          emailController.clear();
          nameController.clear();
          subjectController.clear();
          messageController.clear();
        }
      },
      builder: (context, state) {
        final isLoading = state is ContactUsLoading;
        return CustomButton(
          onTap: isLoading
              ? null
              : () {
                  if (formKey.currentState!.validate()) {
                    context.read<ContactUsCubit>().contactUs(
                      email: emailController.text.trim(),
                      name: nameController.text.trim(),
                      subject: subjectController.text.trim(),
                      message: messageController.text.trim(),
                    );
                  }
                },
          titleWidget: isLoading
              ? const CustomCircularProgressIndicatorWidget(color: Colors.white)
              : Text(
                  'إرسال',
                  style: AppTextStyles.styleAlmaraiExtraBold14(
                    context,
                  ).copyWith(color: Colors.white),
                ),
        );
      },
    );
  }
}
