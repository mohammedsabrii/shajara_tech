import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/chat_item.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/send_message_item.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.h),
                CustomAppBar(
                  title: 'محادثة عائلة بني خالد',
                  onBackTap: () => GoRouter.of(context).pop(),
                ),
                SizedBox(height: 42.h),
                const ChatItem(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  message: 'السلام عليكم عائلة بني خالد',
                  textColor: Colors.white,
                ),
                SizedBox(height: 20.h),
                const Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: ChatItem(
                    color: AppColors.kPlatinum,
                    borderRadius: BorderRadiusGeometry.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    message: 'عليكم السلام',
                    textColor: AppColors.kSpanishGray,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const SendMessageItem(),
          SizedBox(height: 28.h),
        ],
      ),
    );
  }
}
