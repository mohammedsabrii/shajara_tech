class ProfileInfoEntity {
  final int userId;
  final dynamic userProfilePicture;
  final String userName;
  final String userJop;
  final String dateOfBirth;
  final String userLifeStatus;
  final String userPhoneNumper;

  ProfileInfoEntity({
    required this.userProfilePicture,
    required this.userName,
    required this.userJop,
    required this.dateOfBirth,
    required this.userLifeStatus,
    required this.userPhoneNumper,
    required this.userId,
  });
}
