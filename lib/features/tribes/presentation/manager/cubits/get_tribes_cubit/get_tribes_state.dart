part of 'get_tribes_cubit.dart';

@immutable
abstract class GetTribesState {}

class GetTribesInitial extends GetTribesState {}

class GetTribesLoading extends GetTribesState {}

class GetTribesPaginationLoading extends GetTribesState {
  final List<TribesEntity> currentTribes;
  GetTribesPaginationLoading(this.currentTribes);
}

class GetTribesSuccess extends GetTribesState {
  final List<TribesEntity> tribes;
  final bool hasMore;
  GetTribesSuccess({required this.tribes, required this.hasMore});
}

class GetTribesEmpty extends GetTribesState {}

class GetTribesFaliure extends GetTribesState {
  final String errorMessage;
  GetTribesFaliure({required this.errorMessage});
}
