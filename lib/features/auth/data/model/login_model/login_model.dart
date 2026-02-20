import 'package:shajara_tech/features/auth/domain/entity/login_entity.dart';

import 'user.dart';

class LoginModel extends LoginEntity {
  String? message;
  String? token;
  String? tokenType;
  int? userId;
  User? user;
  String? role;
  bool? hasTreeData;

  LoginModel({
    this.message,
    this.token,
    this.tokenType,
    this.userId,
    this.user,
    this.role,
    this.hasTreeData,
  }) : super(
         userEmail: user?.email ?? '',
         userName: user?.name ?? '',
         userToken: token ?? '',
       );

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    message: json['message'] as String?,
    token: json['token'] as String?,
    tokenType: json['token_type'] as String?,
    userId: json['user_id'] as int?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    role: json['role'] as String?,
    hasTreeData: json['hasTreeData'] as bool?,
  );

  Map<String, dynamic> toJson() => {
    'message': message,
    'token': token,
    'token_type': tokenType,
    'user_id': userId,
    'user': user?.toJson(),
    'role': role,
    'hasTreeData': hasTreeData,
  };
}
