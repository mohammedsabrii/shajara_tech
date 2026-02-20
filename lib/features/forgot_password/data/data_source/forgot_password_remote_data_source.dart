import 'package:shajara_tech/core/service/api_service.dart';

abstract class ForgotPasswordRemoteDataSource {
  Future<void> sendOtpCode({required String email});
  Future<void> checkResetCode({required String email, required String code});
  Future<void> resetPassword({
    required String email,
    required String otpCode,
    required String newPassword,
    required String confirmNewPassword,
  });
}

class ForgotPasswordRemoteDataSourceImpl
    implements ForgotPasswordRemoteDataSource {
  final ApiService apiService;

  ForgotPasswordRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> checkResetCode({
    required String email,
    required String code,
  }) async {
    await apiService.post(
      endPoint: 'password/verify-otp-only',
      data: {'email': email, 'otp': code},
    );
  }

  @override
  Future<void> resetPassword({
    required String newPassword,
    required String confirmNewPassword,
    required String email,
    required String otpCode,
  }) async {
    await apiService.post(
      endPoint: 'password/reset-after-otp',
      data: {
        'email': email,
        'otp': otpCode,
        'new_password': newPassword,
        'new_password_confirmation': confirmNewPassword,
      },
    );
  }

  @override
  Future<void> sendOtpCode({required String email}) async {
    await apiService.post(
      endPoint: 'password/request-reset',
      data: {'email': email},
    );
  }
}
