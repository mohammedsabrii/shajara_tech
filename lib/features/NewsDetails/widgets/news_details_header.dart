// ================= Header Image Widget =================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class NewsDetailsHeaderImage extends StatelessWidget {
  const NewsDetailsHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(
          AppImages.kTestImage1,
          width: 327,
          height: 191.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
