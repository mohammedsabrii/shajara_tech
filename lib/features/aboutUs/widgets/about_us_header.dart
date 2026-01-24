// ================= Header Image Widget =================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class AboutUsHeaderImage extends StatelessWidget {
  const AboutUsHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        AppImages.kTestImage1,
        width: double.infinity,
        height: 157.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
