import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonColor,
    this.onTap,
    required this.titleWidget,
  });
  final Color? buttonColor;
  final Widget titleWidget;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.h,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(child: titleWidget),
      ),
    );
  }
}
