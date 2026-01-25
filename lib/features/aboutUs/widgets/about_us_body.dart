import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_images.dart';
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
            SizedBox(height: 11.h),
            Center(
              child: Image.asset(
                AppImages.kShjaraTechIconpng2,
                height: 58.h,
                width: 123.w,
              ),
            ),
            SizedBox(height: 24.h),
            const AboutUsHeaderImage(),

            SizedBox(height: 32.h),
            const AboutUsSection(
              title: 'نربط بين الاشخاص وجذورهم، جيلًا بعد جيل',
              description:
                  'نربط بين الأشخاص وجذورهم بطريقة رقمية حديثة ومتطورة، نسعى لجمع العائلات والحفاظ على الأصل سعيًا منا لإثراء الواقع الثقافي من خلال ربط أفراد العائلة ببعضهم البعض بطريقة حديثة وتكنولوجية سهلة ومفيدة.',
            ),
            SizedBox(height: 24.h),
            const AboutUsSection(
              title: 'رؤيتنا',
              description:
                  'أن نكون المرجع الأول للأسر العربية في توثيق الأنساب، وتعزيز الروابط العائلية في العصر الرقمي.',
            ),
            SizedBox(height: 24.h),
            const AboutUsSection(
              title: 'رسالتنا',
              description:
                  'نُعيد الحياة للترابط العائلي عبر التكنولوجيا. نؤمن أن كل اسم يحمل قصة، وكل شجرة عائلة تحفظ إرثًا يستحق أن يُروى.',
            ),
          ],
        ),
      ),
    );
  }
}
