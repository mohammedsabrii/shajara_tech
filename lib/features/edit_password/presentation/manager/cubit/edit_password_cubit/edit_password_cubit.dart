import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/edit_password/domain/use_cases/edit_password_use_case.dart';

part 'edit_password_state.dart';

class EditPasswordCubit extends Cubit<EditPasswordState> {
  EditPasswordCubit(this.editPasswordUseCase) : super(EditPasswordInitial());
  final EditPasswordUseCase editPasswordUseCase;
  Future<void> editPassword({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    emit(EditPasswordLoading());
    final data = await editPasswordUseCase.call(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
    data.fold(
      (failure) => emit(EditPasswordFailure(errorMessage: failure.message)),
      (response) => emit(EditPasswordSuccess()),
    );
  }
}
