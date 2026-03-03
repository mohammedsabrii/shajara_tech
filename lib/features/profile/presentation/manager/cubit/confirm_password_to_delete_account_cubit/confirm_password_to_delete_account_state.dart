part of 'confirm_password_to_delete_account_cubit.dart';

@immutable
sealed class ConfirmPasswordToDeleteAccountState {}

final class ConfirmPasswordToDeleteAccountInitial
    extends ConfirmPasswordToDeleteAccountState {}

final class ConfirmPasswordToDeleteAccountLoading
    extends ConfirmPasswordToDeleteAccountState {}

final class ConfirmPasswordToDeleteAccountSuccess
    extends ConfirmPasswordToDeleteAccountState {}

final class ConfirmPasswordToDeleteAccountFailure
    extends ConfirmPasswordToDeleteAccountState {
  final String errorMessage;

  ConfirmPasswordToDeleteAccountFailure({required this.errorMessage});
}
