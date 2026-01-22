import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/delete_dialog_action_item.dart';

class DeleteDialogDetails extends StatelessWidget {
  const DeleteDialogDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.symmetric(vertical: 34.h, horizontal: 34.w),
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
              children: [
                const DeleteDialogActionItem(
                  borderColor: AppColors.kRedColor,
                  color: AppColors.kRedColor,
                  titleColor: Colors.white,
                  title: 'حذف',
                ),
                SizedBox(width: 18.w),
                DeleteDialogActionItem(
                  onTap: () => GoRouter.of(context).pop(),
                  borderColor: Colors.grey,
                  color: Colors.white,
                  titleColor: Colors.grey,
                  title: 'إلغاء',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
