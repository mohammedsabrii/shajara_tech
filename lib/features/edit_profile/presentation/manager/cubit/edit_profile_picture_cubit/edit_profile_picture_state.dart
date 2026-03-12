part of 'edit_profile_picture_cubit.dart';

@immutable
sealed class EditProfilePictureState {}

final class EditProfilePictureInitial extends EditProfilePictureState {}

final class EditProfilePictureLoading extends EditProfilePictureState {}

final class EditProfilePictureSuccess extends EditProfilePictureState {}

final class EditProfilePictureFailure extends EditProfilePictureState {
  final String errorMessage;

  EditProfilePictureFailure({required this.errorMessage});
}
