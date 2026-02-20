class LoginEntity {
  final String userEmail;
  final String userName;
  final String userToken;

  LoginEntity({
    required this.userEmail,
    required this.userName,
    required this.userToken,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) {
    dynamic dataValue = json['user'];
    Map<String, dynamic> data;

    if (dataValue is List && dataValue.isNotEmpty) {
      data = dataValue[0] as Map<String, dynamic>;
    } else if (dataValue is Map<String, dynamic>) {
      data = dataValue;
    } else {
      data = {};
    }

    return LoginEntity(
      userName: data['name']?.toString() ?? '',
      userEmail: data['email']?.toString() ?? '',
      userToken: json['token'],
    );
  }
}
