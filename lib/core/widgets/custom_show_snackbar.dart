import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

void customShowSnackBar(BuildContext context, {required String title}) {
  var snackBar = SnackBar(
    elevation: 0,
    content: Text(
      title,
      style: AppTextStyles.styleAlmaraiRegular14(
        context,
      ).copyWith(color: Colors.white),
    ),
    backgroundColor: AppColors.kPrimaryColor.withValues(alpha: .8),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    margin: const EdgeInsets.all(16),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
