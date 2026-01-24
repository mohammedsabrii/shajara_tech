// ==================== TextField ====================
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';

class NewsTextField extends StatelessWidget {
  const NewsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        textAlign: TextAlign.end,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'بحث',
          suffixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              AppIcons.kSearchIcon,
              width: 20,
              height: 20,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.kGraniteGray.withOpacity(0.3),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.kGraniteGray.withOpacity(0.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.kGraniteGray.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
