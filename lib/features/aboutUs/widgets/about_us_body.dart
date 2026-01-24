// ================= About Us Body =================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_header.dart';
import 'package:shajara_tech/features/aboutUs/widgets/about_us_section.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---- Header Image ----
            const AboutUsHeaderImage(),
            SizedBox(height: 32.h),
            // ---- Section 1: من نحن ----
            AboutUsSection(
              title: 'من نحن',
              description:
                  'نربط بين الأشخاص وجذورهم بطريقة رقمية حديثة ومتطورة، نسعى لجمع العائلات والحفاظ على الأصل سعيًا منا لإثراء الواقع الثقافي من خلال ربط أفراد العائلة ببعضهم البعض بطريقة حديثة وتكنولوجية سهلة ومفيدة.',
            ),
            SizedBox(height: 24.h),
            // ---- Section 2: رؤيتنا ----
            AboutUsSection(
              title: 'رؤيتنا',
              description:
                  'أن نكون المرجع الأول للتأثير الإيجابي في توثيق الأنساب، ونشر الثقافة الأنسابية وإثراء الواقع الثقافي في المجتمع الرقمي.',
            ),
            SizedBox(height: 24.h),
            // ---- Section 3: رسالتنا ----
            AboutUsSection(
              title: 'رسالتنا',
              description:
                  'نسعى لتوفير التراتيز الفعالة عبر التكنولوجيا، نؤمن بأن كل نسب يحمل قيمة وله شرحة غالية تحيط إلى أن تسجّل قيل أنْ تفوتْ.',
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
