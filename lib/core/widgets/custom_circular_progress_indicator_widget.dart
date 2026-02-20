import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';

class CustomCircularProgressIndicatorWidget extends StatelessWidget {
  const CustomCircularProgressIndicatorWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: color ?? AppColors.kPrimaryColor),
    );
  }
}


