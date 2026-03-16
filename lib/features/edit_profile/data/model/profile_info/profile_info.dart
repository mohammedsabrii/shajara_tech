import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';

import 'user.dart';

class ProfileInfo extends ProfileInfoEntity {
  String? message;
  User? user;

  ProfileInfo({this.message, this.user})
    : super(
        userProfilePicture: user?.profilePictureUrl ?? '',
        userName: user?.name ?? '',
        dateOfBirth: user?.birthDate ?? '',
        userJop: user?.job ?? '',
        userLifeStatus: user?.socialStatus ?? '',
        userPhoneNumper: user?.phone ?? '',
        userId: user?.id ?? 0,
      );

  factory ProfileInfo.fromJson(Map<String, dynamic> json) => ProfileInfo(
    message: json['message'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {'message': message, 'user': user?.toJson()};
}
