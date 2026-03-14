import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'بحث',
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              AppIcons.kSearchIcon,
              width: 20,
              height: 20,
            ),
          ),
          border: outlineInputBorderMethod(),
          enabledBorder: outlineInputBorderMethod(),
          focusedBorder: outlineInputBorderMethod(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppColors.kGraniteGray.withValues(alpha: 0.3),
      ),
    );
  }
}
