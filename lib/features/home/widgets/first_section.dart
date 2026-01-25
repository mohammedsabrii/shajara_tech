import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kTitleColor.withValues(alpha: 0.1),
      ),
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: 24.w), //test//
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'انضم إلى بوابة عشيرة عشائرك',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.styleAlmaraiBold14(context),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'اربط عشائرك بتراثهم وابني جسور المعرفة والانتماء مع عشائر من كل مكان',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.styleAlmaraiRegular8(context),
                  ),
                  SizedBox(height: 16.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC9A961),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'انضم الآن',
                        style: AppTextStyles.styleAlmaraiBold10(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Image.asset(AppImages.kTreeAvatarPng, height: 210.h, width: 177.w),
        ],
      ),
    );
  }
}
