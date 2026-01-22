import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onBackTap, required this.title});
  final VoidCallback? onBackTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(title, style: AppTextStyles.styleAlmaraiBold16(context)),
        const Spacer(),
      ],
    );
  }
}
