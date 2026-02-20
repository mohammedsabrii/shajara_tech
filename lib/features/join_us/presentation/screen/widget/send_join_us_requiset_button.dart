import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_circular_progress_indicator_widget.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';
import 'package:shajara_tech/features/join_us/presentation/manager/cubit/join_us_cubit/join_us_cubit.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class SendJoinUsRequisetButton extends StatelessWidget {
  const SendJoinUsRequisetButton({
    super.key,
    required this.tribesDetailsEntity,
    required this.nameController,
    required this.emailController,
    required this.dateOfBirthController,
    required this.userLifeStatusController,
    required this.jopController,
    required this.phoneController,
    required this.messageController,
    required this.familyNameConroller,
  });

  final TribesDetailsEntity tribesDetailsEntity;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController dateOfBirthController;
  final TextEditingController userLifeStatusController;
  final TextEditingController jopController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final TextEditingController familyNameConroller;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JoinUsCubit, JoinUsState>(
      listener: (context, state) {
        if (state is JoinUsSuccess) {
          nameController.clear();
          dateOfBirthController.clear();
          emailController.clear();
          familyNameConroller.clear();
          jopController.clear();
          phoneController.clear();
          messageController.clear();
          familyNameConroller.clear();
          customShowSnackBar(context, title: 'تم ارسال طلب الانظمام بنجاح');
        } else if (state is JoinUsFailure) {
          customShowSnackBar(context, title: state.errorMessage);
        }
      },
      builder: (context, state) {
        final isLoading = state is JoinUsLoading;
        return CustomButton(
          onTap: isLoading
              ? null
              : () {
                  context.read<JoinUsCubit>().joinUs(
                    joinUsModel: JoinUsModel(
                      id: tribesDetailsEntity.id ?? 10,
                      userName: nameController.text.trim(),
                      userEmail: emailController.text.trim(),
                      userBirthDate: dateOfBirthController.text.trim(),
                      userSocialStatus: userLifeStatusController.text.trim(),
                      userJop: jopController.text.trim(),
                      userPhone: phoneController.text.trim(),
                      userMessage: messageController.text.trim(),
                      userFamilyName: familyNameConroller.text.trim(),
                    ),
                  );
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
