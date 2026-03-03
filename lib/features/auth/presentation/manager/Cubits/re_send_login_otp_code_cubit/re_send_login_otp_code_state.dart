part of 're_send_login_otp_code_cubit.dart';

@immutable
sealed class ReSendLoginOtpCodeState {}

final class ReSendLoginOtpCodeInitial extends ReSendLoginOtpCodeState {}

final class ReSendLoginOtpCodeLoading extends ReSendLoginOtpCodeState {}

final class ReSendLoginOtpCodeSuccess extends ReSendLoginOtpCodeState {}

final class ReSendLoginOtpCodeFailure extends ReSendLoginOtpCodeState {
  final String errorMessage;

  ReSendLoginOtpCodeFailure({required this.errorMessage});
}
