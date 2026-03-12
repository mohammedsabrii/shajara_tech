import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/edit_profile/domain/use_cases/edit_profile_info_use_case.dart';

part 'edit_profile_info_state.dart';

class EditProfileInfoCubit extends Cubit<EditProfileInfoState> {
  EditProfileInfoCubit(this.editProfileInfoUseCase)
    : super(EditProfileInfoInitial());
  final EditProfileInfoUseCase editProfileInfoUseCase;
  Future<void> editProfile({
    required String userName,
    required String userJop,
    required String dateOfBirth,
    required String userLifeStatus,
    required String userPhoneNumper,
  }) async {
    emit(EditProfileInfoLoading());
    final data = await editProfileInfoUseCase.call(
      userName: userName,
      userJop: userJop,
      dateOfBirth: dateOfBirth,
      userLifeStatus: userLifeStatus,
      userPhoneNumper: userPhoneNumper,
    );
    data.fold(
      (failure) => emit(EditProfileInfoFailure(errorMessage: failure.message)),
      (response) => emit(EditProfileInfoSuccess()),
    );
  }
}
