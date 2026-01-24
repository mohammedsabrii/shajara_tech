// ================= About Us Body =================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/NewsDetails/widgets/news_details_header.dart';
import 'package:shajara_tech/features/NewsDetails/widgets/news_details_section.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_header.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_section.dart';

class NewsDetailsBody extends StatelessWidget {
  const NewsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---- Header Image ----
            const NewsDetailsHeaderImage(),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text(
                    'الجمعة 17 مايو , 2025 ',
                    style: AppTextStyles.styleAlmaraiRegular10(context),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(AppIcons.kLetsIconsDate),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            // ---- Section 1: من نحن ----
            NewsDetailsSection(
              title: 'من نحن',
              description:
                  'نربط بين الأشخاص وجذورهم بطريقة رقمية حديثة ومتطورة، نسعى لجمع العائلات والحفاظ على الأصل سعيًا منا لإثراء الواقع الثقافي من خلال ربط أفراد العائلة ببعضهم البعض بطريقة حديثة وتكنولوجية سهلة ومفيدة.',
            ),
            SizedBox(height: 24.h),

            // ---- Section 2: رؤيتنا ----
          ],
        ),
      ),
    );
  }
}
