part of 'edit_profile_info_cubit.dart';

@immutable
sealed class EditProfileInfoState {}

final class EditProfileInfoInitial extends EditProfileInfoState {}

final class EditProfileInfoLoading extends EditProfileInfoState {}

final class EditProfileInfoSuccess extends EditProfileInfoState {}

final class EditProfileInfoFailure extends EditProfileInfoState {
  final String errorMessage;

  EditProfileInfoFailure({required this.errorMessage});
}
