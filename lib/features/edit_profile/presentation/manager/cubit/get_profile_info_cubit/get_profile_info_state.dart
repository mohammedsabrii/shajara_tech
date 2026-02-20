part of 'get_profile_info_cubit.dart';

@immutable
sealed class GetProfileInfoState {}

final class GetProfileInfoInitial extends GetProfileInfoState {}
final class GetProfileInfoLoading extends GetProfileInfoState {}
final class GetProfileInfoSuccess extends GetProfileInfoState {
  final ProfileInfoEntity profileInfoEntity;

  GetProfileInfoSuccess({required this.profileInfoEntity});
}
final class GetProfileInfoFailure extends GetProfileInfoState {
  final String errorMessage;

  GetProfileInfoFailure({required this.errorMessage});
}

