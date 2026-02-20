part of 'check_reset_code_cubit.dart';

@immutable
sealed class CheckResetCodeState {}

final class CheckResetCodeInitial extends CheckResetCodeState {}
final class CheckResetCodeLoading extends CheckResetCodeState {}
final class CheckResetCodeSuccess extends CheckResetCodeState {}
final class CheckResetCodeFailure extends CheckResetCodeState {
  final String errorMessage;

  CheckResetCodeFailure({required this.errorMessage});
}

