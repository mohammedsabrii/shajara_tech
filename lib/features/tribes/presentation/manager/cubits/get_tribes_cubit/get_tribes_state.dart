part of 'get_tribes_cubit.dart';

@immutable
sealed class GetTribesState {}

final class GetTribesInitial extends GetTribesState {}

final class GetTribesLoading extends GetTribesState {}

final class GetTribesEmpty extends GetTribesState {}

final class GetTribesSuccess extends GetTribesState {
  final List<TribesEntity> tribes;

  GetTribesSuccess({required this.tribes});
}

final class GetTribesFaliure extends GetTribesState {
  final String errorMessage;

  GetTribesFaliure({required this.errorMessage});
}
