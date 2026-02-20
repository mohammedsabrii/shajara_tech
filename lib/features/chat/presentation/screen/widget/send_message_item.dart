import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/chat/presentation/screen/widget/send_message_button.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class SendMessageItem extends StatelessWidget {
  const SendMessageItem({
    super.key,

    required this.tribesDetailsEntity,
    required this.messageController,
  });

  final TextEditingController messageController;
  final TribesDetailsEntity tribesDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: messageController,
                borderColor: Colors.transparent,
                hintText: 'اكتب....',
                heightTextfield: 56.h,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AppIcons.kMicrophoneIcon),
            const SizedBox(width: 8),
            SendMessageButton(
              messageController: messageController,
              tribesDetailsEntity: tribesDetailsEntity,
            ),
          ],
        ),
      ),
    );
  }
}

