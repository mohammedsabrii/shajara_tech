class LoginEntity {
  final String userEmail;
  final String userName;
  final String userToken;
  final int id;

  const LoginEntity({
    required this.userEmail,
    required this.userName,
    required this.userToken,
    required this.id,
  });
}
