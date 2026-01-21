import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class ForgotPasswordAppBar extends StatelessWidget {
  const ForgotPasswordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
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
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Center(
            child: Image.asset(
              AppImages.kShjaraTechIconpng2,
              height: 114.h,
              width: 241.w,
            ),
          ),
        ),
      ],
    );
  }
}
