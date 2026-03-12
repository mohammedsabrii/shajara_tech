import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/presentation/manager/cubit/edit_profile_picture_cubit/edit_profile_picture_cubit.dart';
import 'package:shajara_tech/features/profile/presentation/screens/widget/profile_picture.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({
    super.key,
    required this.onTap,
    required this.profileInfoEntity,
    this.selectedImage,
  });
  final VoidCallback onTap;
  final ProfileInfoEntity profileInfoEntity;
  final File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfilePictureCubit, EditProfilePictureState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            ProfilePicture(
              profileInfoEntity: profileInfoEntity,
              localImage: selectedImage,
            ),
            if (state is EditProfilePictureLoading)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .4),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              ),
            Positioned(
              left: 80.w,
              top: 87.75.h,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 8.h,
                    ),
                    child: SvgPicture.asset(AppIcons.kEditIcon),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
