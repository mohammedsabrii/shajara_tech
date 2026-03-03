import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class ChatUserItem extends StatelessWidget {
  const ChatUserItem({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Text(
        message,
        style: AppTextStyles.styleAlmaraiBold13(
          context,
        ).copyWith(color: Colors.white),
      ),
    );
  }
}

class ChatFriendItem extends StatelessWidget {
  const ChatFriendItem({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: const BoxDecoration(
        color: AppColors.kPlatinum,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Text(
        message,
        style: AppTextStyles.styleAlmaraiBold13(
          context,
        ).copyWith(color: AppColors.kSpanishGray),
      ),
    );
  }
}
