import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(500.r),
      child: Image.asset(
        AppImages.kUserAvatar,
        fit: BoxFit.fill,
        height: 110.h,
        width: 120.w,
      ),
    );
  }
}
