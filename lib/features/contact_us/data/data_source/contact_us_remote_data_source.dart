import 'package:shajara_tech/core/service/api_service.dart';

abstract class ContactUsRemoteDataSource {
  Future<void> contactUs({
    required String name,
    required String email,
    required String subject,
    required String message,
  });
}

class ContactUsRemoteDataSourceImpl implements ContactUsRemoteDataSource {
  final ApiService apiService;

  ContactUsRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> contactUs({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    await apiService.post(
      endPoint: 'contact',
      data: {
        "name": name,
        "email": email,
        "subject": subject,
        "message": message,
      },
    );
  }
}
