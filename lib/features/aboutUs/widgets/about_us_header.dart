import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class AboutUsHeaderImage extends StatelessWidget {
  const AboutUsHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        child: Image.asset(
          AppImages.kTestImage2,
          height: 191.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
