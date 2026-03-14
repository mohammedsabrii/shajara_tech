import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shajara_tech/core/widgets/custom_app_bar.dart';
import 'package:shajara_tech/core/widgets/custom_date_picker_field.dart';
import 'package:shajara_tech/core/widgets/custom_text_field.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/edit_profile_button.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/edit_profile_picture.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/widget/custom_gender_dropdown.dart';

class EditProfileScreenBody extends StatefulWidget {
  const EditProfileScreenBody({super.key, required this.profileInfoEntity});
  final ProfileInfoEntity profileInfoEntity;

  @override
  State<EditProfileScreenBody> createState() => _EditProfileScreenBodyState();
}

class _EditProfileScreenBodyState extends State<EditProfileScreenBody> {
  final _editUserNameController = TextEditingController();
  final _editUserJopController = TextEditingController();
  final _editDateOfBirthController = TextEditingController();
  final _editUserLifeStatusController = TextEditingController();
  final _editUserPhoneNumperController = TextEditingController();

  File? _selectedImage;

  @override
  void dispose() {
    _editUserNameController.dispose();
    _editUserJopController.dispose();
    _editDateOfBirthController.dispose();
    _editUserLifeStatusController.dispose();
    _editUserPhoneNumperController.dispose();
    super.dispose();
  }

  Future<void> _pickAndUploadImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            CustomAppBar(
              title: 'تعديل الحساب الشخصي',
              onBackTap: () => GoRouter.of(context).pop(),
            ),
            SizedBox(height: 16.h),
            EditProfilePicture(
              profileInfoEntity: widget.profileInfoEntity,
              selectedImage: _selectedImage,
              onTap: () => _pickAndUploadImage(context),
            ),
            SizedBox(height: 32.h),
            CustomTextField(
              controller: _editUserNameController,
              hintText: widget.profileInfoEntity.userName.isNotEmpty
                  ? widget.profileInfoEntity.userName
                  : 'ادخل الاسم',
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              controller: _editUserJopController,
              hintText: widget.profileInfoEntity.userJop.isNotEmpty
                  ? widget.profileInfoEntity.userJop
                  : 'ادخل المهنه',
            ),
            SizedBox(height: 16.h),
            CustomDatePickerField(
              controller: _editDateOfBirthController,
              hintText: widget.profileInfoEntity.dateOfBirth.isNotEmpty
                  ? DateFormat('yyyy-MM-dd').format(
                      DateTime.parse(widget.profileInfoEntity.dateOfBirth),
                    )
                  : 'ادخل تاريخ الميلاد',
            ),
            SizedBox(height: 16.h),
            CustomDropDownFiled(
              controller: _editUserLifeStatusController,
              hint: widget.profileInfoEntity.userLifeStatus.isNotEmpty
                  ? widget.profileInfoEntity.userLifeStatus
                  : 'ادخل الحالة الاجتماعية',
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              controller: _editUserPhoneNumperController,
              hintText:
                  widget.profileInfoEntity.userPhoneNumper.toString().isNotEmpty
                  ? widget.profileInfoEntity.userPhoneNumper.toString()
                  : 'ادخل رقم الهاتف',
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 40.h),
            EditProfileButton(
              editUserNameController: _editUserNameController,
              editUserJopController: _editUserJopController,
              editDateOfBirthController: _editDateOfBirthController,
              editUserLifeStatusController: _editUserLifeStatusController,
              editUserPhoneNumperController: _editUserPhoneNumperController,
              originalProfileInfo: widget.profileInfoEntity,
              image: _selectedImage,
            ),
          ],
        ),
      ),
    );
  }
}
