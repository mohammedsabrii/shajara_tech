import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/edit_profile/data/model/profile_info/profile_info.dart';

abstract class EditProfileRemoteDataSource {
  Future<ProfileInfo> getProfileInfo({required int userId});
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
    required int userId,
  });
}

class EditProfileRemoteDataSourceImpl implements EditProfileRemoteDataSource {
  final ApiService apiService;

  EditProfileRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> editProfileInfo({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
    required int userId,
  }) async {
    await apiService.put(
      endPoint: 'user-profiles/$userId',
      data: {
        "name": userName,
        "phone": userPhoneNumper,
        "birth_date": dateOfBirth,
        "life_status": userLifeStatus,
      },
    );
  }

  @override
  Future<ProfileInfo> getProfileInfo({required int userId}) async {
    final data = await apiService.get(endPoint: 'user-profiles/$userId');
    return ProfileInfo.fromJson(data);
  }
}
