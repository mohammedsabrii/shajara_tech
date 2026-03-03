import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/profile/domain/use_case/delete_account_use_case.dart';

part 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this.deleteAccountUsecase) : super(DeleteAccountInitial());
  final DeleteAccountUseCase deleteAccountUsecase;
  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    final data = await deleteAccountUsecase.deleteAccount();
    data.fold(
      (faliure) => emit(DeleteAccountFailure(errorMessage: faliure.message)),
      (response) => emit(DeleteAccountSuccess()),
    );
  }
}
