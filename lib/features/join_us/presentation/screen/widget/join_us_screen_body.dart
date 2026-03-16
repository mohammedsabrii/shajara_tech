import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/core/widgets/custom_date_picker_field.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/core/widgets/logo_app_bar.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/custom_gender_dropdown.dart';
import 'package:shajara_tech/features/join_us/presentation/screen/widget/send_join_us_requiset_button.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

class JoinUsScreenBody extends StatefulWidget {
  const JoinUsScreenBody({super.key, required this.tribesDetailsEntity});
  final TribesDetailsEntity tribesDetailsEntity;
  @override
  State<JoinUsScreenBody> createState() => _JoinUsScreenBodyState();
}

class _JoinUsScreenBodyState extends State<JoinUsScreenBody> {
  final _nameController = TextEditingController();
  final _jopController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _familyNameConroller = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _userLifeStatusController = TextEditingController();
  final _messageController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _dateOfBirthController.dispose();
    _jopController.dispose();
    _emailController.dispose();
    _familyNameConroller.dispose();
    _userLifeStatusController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11.h),
            LogoAppBar(onBackTap: () => Navigator.pop(context)),
            SizedBox(height: 53.h),
            Text(
              'الانضمام إلينا',
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
            CustomTextField(controller: _jopController, hintText: 'الوظيفة'),
            SizedBox(height: 16.h),
            CustomDatePickerField(
              controller: _dateOfBirthController,
              hintText: 'تاريخ الميلاد',
            ),
            SizedBox(height: 16.h),
            CustomDropDownFiled(
              controller: _userLifeStatusController,
              hint: 'الحالة الاجتماعية',
            ),
            SizedBox(height: 16.h),

            CustomTextField(
              controller: _phoneController,
              hintText: 'رقم الهاتف',
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              controller: _familyNameConroller,
              hintText: 'أسم العائلة',
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              controller: _messageController,
              hintText: 'أذكر نبذة مختصرة عن القبيلة',
              heightTextfield: 137.h,
            ),
            SizedBox(height: 40.h),
            SendJoinUsRequisetButton(
              tribesDetailsEntity: widget.tribesDetailsEntity,
              nameController: _nameController,
              emailController: _emailController,
              dateOfBirthController: _dateOfBirthController,
              userLifeStatusController: _userLifeStatusController,
              jopController: _jopController,
              phoneController: _phoneController,
              messageController: _messageController,
              familyNameConroller: _familyNameConroller,
            ),
          ],
        ),
      ),
    );
  }
}
