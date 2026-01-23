import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class NotificationItemTitleAndDescription extends StatelessWidget {
  const NotificationItemTitleAndDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.styleAlmaraiRegular14(context),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.styleAlmaraiRegular10(
              context,
            ).copyWith(color: AppColors.kGraniteGray),
          ),
        ],
      ),
    );
  }
}
