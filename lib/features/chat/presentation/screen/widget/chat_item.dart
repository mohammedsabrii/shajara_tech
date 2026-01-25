import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.color,
    required this.borderRadius,
    required this.message,
    required this.textColor,
  });
  final Color color, textColor;
  final BorderRadiusGeometry borderRadius;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),

      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
      child: Text(
        message,
        style: AppTextStyles.styleAlmaraiBold13(
          context,
        ).copyWith(color: textColor),
      ),
    );
  }
}
