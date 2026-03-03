import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteDialogActionItem extends StatelessWidget {
  const DeleteDialogActionItem({
    super.key,
    required this.color,
    required this.borderColor,
    required this.title,
    this.onTap,
  });
  final Color color, borderColor;
  final Widget title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: borderColor),
        ),
        child: Center(child: title),
      ),
    );
  }
}
