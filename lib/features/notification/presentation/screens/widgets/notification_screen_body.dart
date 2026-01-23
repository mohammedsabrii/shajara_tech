import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/features/notification/presentation/screens/widgets/notification_item.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 18.h),
            CustomAppBar(
              title: 'الإشعارات',
              onBackTap: () => GoRouter.of(context).pop(),
            ),
            SizedBox(height: 32.h),
            const NotificationItem(
              icon: AppIcons.kNewJoiningRequestIcon,
              title: 'طلب انضمام جديد',
              description:
                  'تلقّيت طلبًا من "محمد أحمد" للانضمام إلى شجرة عائلة عبدالعزيز',
            ),
            const NotificationItem(
              icon: AppIcons.kModificationIcon,
              title: 'تعديل إداري علي شجرة العائلة',
              description: '“منشئ الشجرة” عدل علاقة بين محمود و فاطمة',
            ),
            const NotificationItem(
              icon: AppIcons.kNewLoginIcon,
              title: 'تسجيل دخول جديد',
              description: 'تم تسجيل دخول من حساب “Admin2” الساعة 3:45 م',
            ),
            const NotificationItem(
              icon: AppIcons.kBirthdayIcon,
              title: 'عيد ميلاد أحد الأعضاء',
              description: 'اليوم عيد ميلاد "خالد محمد" 🎂',
            ),
            const NotificationItem(
              icon: AppIcons.kFailureIcon,
              title: 'محاولة دخول فاشلة',
              description: 'حساب "ahmed123" حاول تسجيل الدخول 3 مرات متتالية',
            ),
          ],
        ),
      ),
    );
  }
}
