import 'package:shajara_tech/core/service/api_service.dart';

abstract class DeleteAccountRemoteDataSource {
  Future<void> confirmPasswordToDeleteAccount({required String password});
  Future<void> deleteAccount();
}

class DeleteAccountRemoteDataSourceImpl
    implements DeleteAccountRemoteDataSource {
  final ApiService apiService;

  DeleteAccountRemoteDataSourceImpl({required this.apiService});

  @override
  Future<void> confirmPasswordToDeleteAccount({
    required String password,
  }) async {
    await apiService.post(
      endPoint: 'account/delete',
      data: {'password': password},
    );
  }

  @override
  Future<void> deleteAccount() {
    return apiService.delete(endPoint: 'account');
  }
}
