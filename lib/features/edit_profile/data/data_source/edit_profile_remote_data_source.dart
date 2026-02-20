import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/edit_profile/data/model/profile_info/profile_info.dart';

abstract class EditProfileRemoteDataSource {
  Future<ProfileInfo> getProfileInfo();
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required DateTime dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  });
}

class EditProfileRemoteDataSourceImpl implements EditProfileRemoteDataSource {
  final ApiService apiService;

  EditProfileRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required DateTime dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  }) async {
    await apiService.put(
      endPoint: 'profile?',
      data: {
        "name": userName,
        "phone": userPhoneNumper,
        "birth_date": dateOfBirth,
        "life_status": userLifeStatus,
      },
    );
  }

  @override
  Future<ProfileInfo> getProfileInfo() async {
    final data = await apiService.get(endPoint: 'user-profiles/1');
    return ProfileInfo.fromJson(data);
  }
}
