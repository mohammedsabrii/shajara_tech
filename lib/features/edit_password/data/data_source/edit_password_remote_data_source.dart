import 'package:shajara_tech/core/service/api_service.dart';

abstract class EditPasswordRemoteDataSource {
  Future<void> editPassword({
    required String newPassword,
    required String confirmNewPassword,
  });
}

class EditPasswordRemoteDataSourceImpl implements EditPasswordRemoteDataSource {
  final ApiService apiService;

  EditPasswordRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> editPassword({
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    await apiService.post(
      endPoint: 'change-password',
      data: {
        'new_password': newPassword,
        'new_password_confirmation': confirmNewPassword,
      },
    );
  }
}
