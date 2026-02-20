part of 'join_us_cubit.dart';

@immutable
sealed class JoinUsState {}

final class JoinUsInitial extends JoinUsState {}

final class JoinUsLoading extends JoinUsState {}

final class JoinUsSuccess extends JoinUsState {}

final class JoinUsFailure extends JoinUsState {
  final String errorMessage;

  JoinUsFailure({required this.errorMessage});
}
