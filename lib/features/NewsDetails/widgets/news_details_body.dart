import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/NewsDetails/widgets/news_details_header.dart';
import 'package:shajara_tech/features/NewsDetails/widgets/news_details_section.dart';

class NewsDetailsBody extends StatelessWidget {
  const NewsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              CustomAppBar(
                title: 'اخبار قبيلة بني خالد',
                onBackTap: () => GoRouter.of(context).pop(),
              ),
              SizedBox(height: 32.h),
              const NewsDetailsHeaderImage(),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
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
              const NewsDetailsSection(
                title: 'قبيلة بني خالد تحتفل بقدوم مولود جديد في أحد فروعها',
                description:
                    'في أجواء يملؤها الفرح والسرور، احتفلت قبيلة العتيبي بقدوم مولود جديد في أحد فروعها، حيث توافد أفراد الأسرة والأقارب لتقديم التهاني والتبريكات لوالدي المولود، تعبيرًا عن مشاعرهم الصادقة ومشاركتهم في هذه المناسبة السعيدة.وقد عمّت مظاهر البهجة والسرور بين أفراد العائلة، الذين عبّروا عن سعادتهم بقدوم هذا المولود، سائلين المولى عز وجل أن يجعله من مواليد السعادة، وأن يُنبتَه نباتًا حسنًا، ويقر به أعين والديه، وأن يكون من البارين الصالحين، وحاملًا لراية الخير والعطاء لأسرته ووطنه.وأُقيم بهذه المناسبة حفل استقبال عائلي بسيط جمع الأقارب والمحبين، سادته أجواء الألفة والمودة، وتخلله تبادل التهاني والدعوات للمولود وذويه. وأكد الحاضرون على أهمية هذه اللحظات في تعزيز الروابط الأسرية والاجتماعية، وإحياء قيم المحبة والتكاتف بين أبناء القبيلة.وتتقدم أسرة تحريرنا بأصدق التهاني والتبريكات لعائلة المولود، سائلين الله أن يجعله من الذرية الصالحة، وأن يديم على الجميع نعمة الفرح والمسرات.',
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
