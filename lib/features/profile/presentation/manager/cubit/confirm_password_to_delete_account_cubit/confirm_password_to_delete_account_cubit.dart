import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/profile/domain/use_case/confirm_password_to_delete_account_use_case.dart';

part 'confirm_password_to_delete_account_state.dart';

class ConfirmPasswordToDeleteAccountCubit
    extends Cubit<ConfirmPasswordToDeleteAccountState> {
  ConfirmPasswordToDeleteAccountCubit(
    this.confirmPasswordToDeleteAccountUseCase,
  ) : super(ConfirmPasswordToDeleteAccountInitial());
  final ConfirmPasswordToDeleteAccountUseCase
  confirmPasswordToDeleteAccountUseCase;
  Future<void> confirmPasswordToDeleteAccount({
    required String password,
  }) async {
    emit(ConfirmPasswordToDeleteAccountLoading());
    final data = await confirmPasswordToDeleteAccountUseCase
        .confirmPasswordToDeleteAccount(password: password);
    data.fold(
      (faliure) => emit(
        ConfirmPasswordToDeleteAccountFailure(errorMessage: faliure.message),
      ),
      (response) => emit(ConfirmPasswordToDeleteAccountSuccess()),
    );
  }
}
