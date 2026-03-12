import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.profileInfoEntity,
    this.localImage,
  });
  final ProfileInfoEntity profileInfoEntity;
  final File? localImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(500.r),
      child: localImage != null
          ? Image.file(
              localImage!,
              fit: BoxFit.fill,
              height: 110.h,
              width: 120.w,
            )
          : Image.network(
              profileInfoEntity.userProfilePicture,
              fit: BoxFit.fill,
              height: 110.h,
              width: 120.w,
            ),
    );
  }
}
