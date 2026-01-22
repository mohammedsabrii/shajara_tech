import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/profile_picture.dart';

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const ProfilePicture(),
        Positioned(
          left: 80.w,
          top: 87.75.h,
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SizedBox(child: SvgPicture.asset(AppIcons.kEditIcon)),
            ),
          ),
        ),
      ],
    );
  }
}
