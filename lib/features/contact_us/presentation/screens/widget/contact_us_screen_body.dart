import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
import 'package:shajara_tech/features/contact_us/presentation/manager/cubit/contact_us_cubit/contact_us_cubit.dart';
import 'package:shajara_tech/features/contact_us/presentation/screens/widget/contact_us_button.dart';

class ContactUsScreenBody extends StatefulWidget {
  const ContactUsScreenBody({super.key});

  @override
  State<ContactUsScreenBody> createState() => _ContactUsScreenBodyState();
}

class _ContactUsScreenBodyState extends State<ContactUsScreenBody> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactUsCubit>(),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 11.h),
                LogoAppBar(onBackTap: () => Navigator.pop(context)),
                SizedBox(height: 53.h),
                Text(
                  'تواصل معنا',
                  style: AppTextStyles.styleAlmaraiBold18(context),
                ),
                SizedBox(height: 8.h),
                Text(
                  'نسعد بتواصلك معنا للإجابة على استفساراتك أو استقبال مقترحاتك في أي وقت.',
                  style: AppTextStyles.styleAlmaraiRegular12(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
                SizedBox(height: 28.h),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'الإسم بالكامل',
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'البريد الالكتروني',
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _subjectController,
                  hintText: 'الموضوع',
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: _messageController,
                  hintText: 'الرسالة',
                  heightTextfield: 137.h,
                ),
                SizedBox(height: 40.h),
                ContactUsButton(
                  formKey: _formKey,
                  emailController: _emailController,
                  nameController: _nameController,
                  subjectController: _subjectController,
                  messageController: _messageController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
