import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class NewsDetailsHeaderImage extends StatelessWidget {
  const NewsDetailsHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 191.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          image: const DecorationImage(
            image: AssetImage(AppImages.kTestImage1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
