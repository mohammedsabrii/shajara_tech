import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shajara_tech/core/utils/app_colors.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  State<OtpTimer> createState() => _CountUpTimerState();
}

class _CountUpTimerState extends State<OtpTimer> {
  int totalSeconds = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        totalSeconds++;
      });
    });
  }

  String get timeString {
    final minutes = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (totalSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      timeString,
      style: AppTextStyles.styleAlmaraiRegular14(
        context,
      ).copyWith(color: AppColors.kDescriptionColor),
    );
  }
}
