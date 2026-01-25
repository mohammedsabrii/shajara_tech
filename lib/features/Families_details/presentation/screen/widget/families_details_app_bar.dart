import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class FamiliesDetailsAppBar extends StatelessWidget {
  const FamiliesDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Container(
            height: 40.h,
            width: 31.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.kSpanishGray),
            ),
            child: Center(
              child: Icon(
                CupertinoIcons.chevron_forward,
                size: 20.sp,
                color: AppColors.kSpanishGray,
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          'عائلة قبيلة بني خالد',
          style: AppTextStyles.styleAlmaraiBold16(context),
        ),
        const Spacer(),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(child: SvgPicture.asset(AppImages.kJoinImage)),
        ),
      ],
    );
  }
}
