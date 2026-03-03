import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_show_snackbar.dart';
import 'package:shajara_tech/features/profile/presentation/manager/cubit/delete_account_cubit/delete_account_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/delete_dialog_action_item.dart';

class DeleteDialogDetails extends StatelessWidget {
  const DeleteDialogDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
      listener: (context, state) {
        if (state is DeleteAccountSuccess) {
          GoRouter.of(context).go(AppRouter.kLogInScreen);
          customShowSnackBar(context, title: 'تم حذف الحساب بنجاح');
        } else if (state is DeleteAccountFailure) {
          customShowSnackBar(context, title: state.errorMessage);
        }
      },
      builder: (context, state) {
        return SimpleDialog(
          contentPadding: EdgeInsets.symmetric(
            vertical: 34.h,
            horizontal: 25.w,
          ),
          titlePadding: EdgeInsetsGeometry.zero,
          elevation: 0,
          backgroundColor: Colors.white,
          children: [
            Column(
              children: [
                SvgPicture.asset(AppIcons.kTrashIcon),
                SizedBox(height: 24.h),
                Text(
                  'هل أنت متأكد من حذف حسابك ؟',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.styleAlmaraiRegular16(context),
                ),
                SizedBox(height: 37.h),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    DeleteDialogActionItem(
                      onTap: () {
                        context.read<DeleteAccountCubit>().deleteAccount();
                      },
                      borderColor: AppColors.kRedColor,
                      color: AppColors.kRedColor,
                      title: Text(
                        'حذف',
                        style: AppTextStyles.styleAlmaraiRegular16(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 18.w),
                    DeleteDialogActionItem(
                      onTap: () => GoRouter.of(context).pop(),
                      borderColor: Colors.grey,
                      color: Colors.white,
                      title: Text(
                        'إلغاء',
                        style: AppTextStyles.styleAlmaraiRegular16(
                          context,
                        ).copyWith(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
