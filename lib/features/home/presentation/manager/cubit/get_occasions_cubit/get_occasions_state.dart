part of 'get_occasions_cubit.dart';

@immutable
sealed class GetOccasionsState {}

final class GetOccasionsInitial extends GetOccasionsState {}

final class GetOccasionsLoading extends GetOccasionsState {}

final class GetOccasionsEmpty extends GetOccasionsState {}

final class GetOccasionsSuccess extends GetOccasionsState {
  final List<OccasionEntity> occasionEntity;

  GetOccasionsSuccess({required this.occasionEntity});
}

final class GetOccasionsFailure extends GetOccasionsState {
  final String errorMessage;

  GetOccasionsFailure({required this.errorMessage});
}
