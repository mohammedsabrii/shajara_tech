import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';

class LoginModel extends LoginEntity {
  final String? message;
  final String? tokenType;
  final String? role;
  final bool? hasTreeData;

  LoginModel({
    this.message,
    required String token,
    this.tokenType,
    required int userId,
    required super.userName,
    required super.userEmail,
    this.role,
    this.hasTreeData,
  }) : super(userToken: token, id: userId);

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    final userJson = json['user'];

    if (userJson == null || userJson is! Map<String, dynamic>) {
      throw Exception("User data is missing in login response");
    }

    return LoginModel(
      message: json['message'],
      token: json['token'] ?? '',
      tokenType: json['token_type'],
      userId: json['user_id'] ?? 0,
      userName: userJson['name'] ?? '',
      userEmail: userJson['email'] ?? '',
      role: json['role'],
      hasTreeData: json['hasTreeData'],
    );
  }
}
