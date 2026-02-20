part of 'get_tribe_details_cubit.dart';

@immutable
sealed class GetTribeDetailsState {}

final class GetTribeDetailsInitial extends GetTribeDetailsState {}

final class GetTribeDetailsLoading extends GetTribeDetailsState {}

final class GetTribeDetailsSuccess extends GetTribeDetailsState {
  final TribesDetailsEntity tribeDetails;

  GetTribeDetailsSuccess({required this.tribeDetails});
}

final class GetTribeDetailsFailure extends GetTribeDetailsState {
  final String errorMessage;

  GetTribeDetailsFailure({required this.errorMessage});
}
