import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/auth/data/model/login_model/login_model.dart';
import 'package:shajara_tech/features/auth/data/model/sign_up_model/sign_up_model.dart';
import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';

abstract class AuthRemoteDataSource {
  Future<SignUpEntity> signUp(
    String name,
    String email,
    String password,
    String confirmPassword,
  );
  Future<void> login(String email, String password);
  Future<LoginModel> checkResetOtpCode({
    required String email,
    required String code,
  });
  Future<void> reSendOtpCode({required String email});
  Future<void> logout();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<SignUpEntity> signUp(
    String name,
    String email,
    String password,
    String confirmPassword,
  ) async {
    final response = await apiService.post(
      endPoint: 'register',
      data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      },
    );

    return SignUpModel.fromJson(response['user']);
  }

  @override
  Future<void> login(String email, String password) async {
    await apiService.post(
      endPoint: 'login',
      data: {'email': email, 'password': password},
    );
  }

  @override
  Future<void> logout() async {
    await apiService.post(endPoint: 'logout');
  }

  @override
  Future<LoginModel> checkResetOtpCode({
    required String email,
    required String code,
  }) async {
    final response = await apiService.post(
      endPoint: 'login/verify-otp',
      data: {'email': email, 'otp': code},
    );
    return LoginModel.fromJson(response);
  }

  @override
  Future<void> reSendOtpCode({required String email}) async {
    await apiService.post(
      endPoint: 'login/request-otp',
      data: {'email': email},
    );
  }
}
