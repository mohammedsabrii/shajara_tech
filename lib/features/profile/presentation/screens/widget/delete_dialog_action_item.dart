import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class DeleteDialogActionItem extends StatelessWidget {
  const DeleteDialogActionItem({
    super.key,
    required this.color,
    required this.borderColor,
    required this.title,
    required this.titleColor,
    this.onTap,
  });
  final Color color, borderColor, titleColor;
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 110.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.styleAlmaraiRegular16(
              context,
            ).copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
