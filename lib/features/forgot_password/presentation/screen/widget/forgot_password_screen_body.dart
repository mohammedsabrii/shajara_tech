import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:shajara_tech/core/widgets/custom_button.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_app_bar.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/widget/forgot_password_screen_header.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          const ForgotPasswordAppBar(),
          const ForgotPasswordScreenHeader(),
          SizedBox(height: 28.h),
          const CustomTextField(hintText: 'البريد الالكتروني'),
          SizedBox(height: 40.h),
          CustomButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kOtpScreen);
            },
            title: 'أستمرار',
          ),
        ],
      ),
    );
  }
}
