import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.canRequestFocus,
    this.obscureText,
    this.validator,
    this.onChanged,
    required this.hintText,
    this.hintStyle,
    this.textFieldTitle,
    this.controller,
    this.textAlign,
    this.heightTextfield,
    this.fontSizeTextFieldTitle,
    this.fontSizeHintText,
    this.keyboardType,
    this.showEyeIcon = false,
  });

  final bool? canRequestFocus;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final Function(String p1)? onChanged;
  final String? hintText, textFieldTitle;
  final TextStyle? hintStyle;
  final bool showEyeIcon;

  final TextEditingController? controller;
  final TextAlign? textAlign;
  final double? heightTextfield;
  final double? fontSizeTextFieldTitle;
  final double? fontSizeHintText;
  final TextInputType? keyboardType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText ?? false;
  }

  void toggleObscure() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: widget.validator,
      builder: (fieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: widget.heightTextfield ?? 40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                border: Border.all(
                  color: fieldState.hasError
                      ? Colors.red
                      : AppColors.kSpanishGray.withValues(alpha: 0.5),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: widget.keyboardType,
                      textAlign: widget.textAlign ?? TextAlign.start,
                      autocorrect: false,
                      enableSuggestions: false,
                      controller: widget.controller,
                      cursorColor: Colors.black,
                      canRequestFocus: widget.canRequestFocus ?? true,

                      obscureText: obscureText,

                      onChanged: (value) {
                        widget.onChanged?.call(value);
                        fieldState.didChange(value);
                      },
                      style: AppTextStyles.styleAlmaraiRegular12(
                        context,
                      ).copyWith(color: AppColors.kTitleColor),
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle:
                            widget.hintStyle ??
                            AppTextStyles.styleAlmaraiRegular10(
                              context,
                            ).copyWith(color: AppColors.kSpanishGray),
                      ),
                    ),
                  ),
                  if (widget.showEyeIcon)
                    SizedBox(
                      width: 40.w,
                      child: IconButton(
                        icon: SvgPicture.asset(AppIcons.kEyeIcon),
                        onPressed: toggleObscure,
                      ),
                    ),
                ],
              ),
            ),
            if (fieldState.hasError)
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Text(
                  fieldState.errorText ?? '',
                  style: AppTextStyles.styleAlmaraiRegular12(
                    context,
                  ).copyWith(color: AppColors.kRedColor),
                ),
              ),
          ],
        );
      },
    );
  }
}
