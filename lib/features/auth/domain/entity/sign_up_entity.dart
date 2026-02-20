class SignUpEntity {
  final String userRole;
  final String userEmail;
  final String userName;

  const SignUpEntity({
    required this.userRole,
    required this.userEmail,
    required this.userName,
  });
  factory SignUpEntity.fromJson(Map<String, dynamic> json) {
    dynamic dataValue = json['user'];
    Map<String, dynamic> data;

    if (dataValue is List && dataValue.isNotEmpty) {
      data = dataValue[0] as Map<String, dynamic>;
    } else if (dataValue is Map<String, dynamic>) {
      data = dataValue;
    } else {
      data = {};
    }

    return SignUpEntity(
      userName: data['name']?.toString() ?? '',
      userEmail: data['email']?.toString() ?? '',
      userRole: data['role']?.toString() ?? '',
    );
  }
}
