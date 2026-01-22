import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

enum EmotionalState { single, married }

class CustomDropDownFiled extends StatefulWidget {
  const CustomDropDownFiled({super.key});

  @override
  State<CustomDropDownFiled> createState() => _CustomDropDownFiledState();
}

class _CustomDropDownFiledState extends State<CustomDropDownFiled> {
  EmotionalState? selectedGender;

  String _getEmotionalState(EmotionalState gender) {
    switch (gender) {
      case EmotionalState.single:
        return 'اعزب';
      case EmotionalState.married:
        return 'مُتزوج';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kSpanishGray.withValues(alpha: 0.5),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: Center(
          child: DropdownButton<EmotionalState>(
            value: selectedGender,
            hint: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اختر',
                style: AppTextStyles.styleAlmaraiRegular10(
                  context,
                ).copyWith(color: AppColors.kGraniteGray),
              ),
            ),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: Colors.grey,
            ),
            elevation: 0,
            style: AppTextStyles.styleAlmaraiRegular12(
              context,
            ).copyWith(color: AppColors.kGraniteGray),
            dropdownColor: Colors.white,
            menuMaxHeight: 200,
            alignment: AlignmentDirectional.bottomStart,
            items: EmotionalState.values.map((EmotionalState gender) {
              return DropdownMenuItem<EmotionalState>(
                value: gender,
                child: Text(_getEmotionalState(gender)),
              );
            }).toList(),
            onChanged: (EmotionalState? value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
