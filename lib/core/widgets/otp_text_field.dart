import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
    required this.controller,
    this.isLast = false,
  });

  final TextEditingController controller;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 56.w,
      child: TextFormField(
        controller: controller,
        textDirection: TextDirection.ltr,
        onChanged: (value) {
          if (value.length == 1 && !isLast) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          enabledBorder: outLineInputBorderMethod(),
          focusedBorder: outLineInputBorderMethod(),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide.none,
    );
  }
}
