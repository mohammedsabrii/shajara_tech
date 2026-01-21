import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key, this.onBackTap});
  final VoidCallback? onBackTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        GestureDetector(
          onTap: onBackTap,
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
        Image.asset(AppImages.kShjaraTechIconpng2, height: 58.h, width: 123.w),
        const Spacer(),
      ],
    );
  }
}
