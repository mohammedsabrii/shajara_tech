part of 'check_login_otp_code_cubit.dart';

@immutable
sealed class CheckLoginOtpCodeState {}

final class CheckLoginOtpCodeInitial extends CheckLoginOtpCodeState {}

final class CheckLoginOtpCodeLoading extends CheckLoginOtpCodeState {}

final class CheckLoginOtpCodeSuccess extends CheckLoginOtpCodeState {
  final LoginEntity loginEntity;

  CheckLoginOtpCodeSuccess({required this.loginEntity});
}

final class CheckLoginOtpCodeFailure extends CheckLoginOtpCodeState {
  final String errorMessage;

  CheckLoginOtpCodeFailure({required this.errorMessage});
}
