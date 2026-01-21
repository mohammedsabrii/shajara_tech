import 'package:flutter/material.dart';
import 'package:shajara_tech/core/widgets/otp_text_field.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({super.key});

  @override
  State<OtpFields> createState() => OtpFieldsState();
}

class OtpFieldsState extends State<OtpFields> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (code) => TextEditingController(),
  );
  String getOtpCode() {
    return controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: List.generate(
            4,
            (index) => OtpTextField(controller: controllers[index]),
          ),
        ),
      ),
    );
  }
}
