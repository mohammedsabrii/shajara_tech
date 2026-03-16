import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/edit_profile/data/model/profile_info/profile_info.dart';

abstract class EditProfileRemoteDataSource {
  Future<ProfileInfo> getProfileInfo({required int userId});
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userSocialStatus,
    required String userPhoneNumper,
    required int userId,
  });
  Future<void> updateProfilePicture(File image);
}

class EditProfileRemoteDataSourceImpl implements EditProfileRemoteDataSource {
  final ApiService apiService;

  EditProfileRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userSocialStatus,
    required String userPhoneNumper,
    required int userId,
  }) async {
    await apiService.put(
      endPoint: 'user-profiles/$userId',
      data: {
        "name": userName,
        "phone": userPhoneNumper,
        "job": userJop,
        "birth_date": dateOfBirth,
        "social_status": userSocialStatus,
      },
    );
  }

  @override
  Future<ProfileInfo> getProfileInfo({required int userId}) async {
    final data = await apiService.get(endPoint: 'user-profiles/$userId');
    print(data);
    return ProfileInfo.fromJson(data);
  }

  @override
  Future<void> updateProfilePicture(File image) async {
    FormData formData = FormData.fromMap({
      'profile_picture': await MultipartFile.fromFile(
        image.path,
        filename: image.path.split('/').last,
      ),
    });

    await apiService.post(
      endPoint: 'account/profile-picture',
      data: formData,
      isMultipart: true,
    );
  }
}
