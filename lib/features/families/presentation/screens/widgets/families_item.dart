import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class FamilieItem extends StatelessWidget {
  const FamilieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kFamiliesDetailsScreen),
      child: Column(
        children: [
          Image.asset(AppImages.kTestImage1, height: 132.h, width: 156),
          SizedBox(height: 8.h),
          Text(
            'قبيلة بني خالد',
            style: AppTextStyles.styleAlmaraiRegular12(
              context,
            ).copyWith(color: AppColors.kTitleColor),
          ),
        ],
      ),
    );
  }
}
