import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class CustomDatePickerField extends StatefulWidget {
  const CustomDatePickerField({
    super.key,
    required this.hintText,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
    this.validator,
    this.heightTextfield,
  });

  final String hintText;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime)? onDateSelected;
  final String? Function(String?)? validator;
  final double? heightTextfield;

  @override
  State<CustomDatePickerField> createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: widget.initialDate ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: TextTheme(
              displayLarge: AppTextStyles.styleAlmaraiBold13(context),
              labelLarge: AppTextStyles.styleAlmaraiBold13(context),
              titleLarge: AppTextStyles.styleAlmaraiBold13(context),
              headlineLarge: AppTextStyles.styleAlmaraiBold18(context),
              bodyLarge: AppTextStyles.styleAlmaraiBold13(context),
              bodyMedium: AppTextStyles.styleAlmaraiBold14(context),
            ),

            colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.kPrimaryColor,
              onPrimary: AppColors.kbackGroundColor,
              secondary: AppColors.kPrimaryColor,
              onSecondary: AppColors.kbackGroundColor,
              error: Colors.red,
              onError: Colors.white,
              surface: AppColors.kbackGroundColor,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

      setState(() {
        _controller.text = formattedDate;
      });

      widget.onDateSelected?.call(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: widget.heightTextfield ?? 40,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        border: Border.all(
          color: AppColors.kSpanishGray.withValues(alpha: 0.5),
        ),
      ),
      child: TextFormField(
        style: AppTextStyles.styleAlmaraiRegular10(
          context,
        ).copyWith(color: AppColors.kGraniteGray),
        controller: _controller,
        readOnly: true,
        textAlignVertical: TextAlignVertical.center,
        validator: widget.validator,
        onTap: () => _pickDate(context),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          hintText: widget.hintText,
          helperStyle: AppTextStyles.styleAlmaraiRegular10(
            context,
          ).copyWith(color: AppColors.kGraniteGray),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h),
            child: SvgPicture.asset(AppIcons.kDateFill),
          ),
        ),
      ),
    );
  }
}
