part of 'send_otp_code_cubit.dart';

@immutable
sealed class SendOtpCodeState {}

final class SendOtpCodeInitial extends SendOtpCodeState {}
final class SendOtpCodeLoading extends SendOtpCodeState {}
final class SendOtpCodeSuccess extends SendOtpCodeState {}
final class SendOtpCodeFailure extends SendOtpCodeState {
  final String errorMessage;

  SendOtpCodeFailure({required this.errorMessage});
}

