import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:shajara_tech/features/edit_profile/domain/use_cases/update_profile_picture_use_case.dart';

part 'edit_profile_picture_state.dart';

class EditProfilePictureCubit extends Cubit<EditProfilePictureState> {
  EditProfilePictureCubit(this.updateProfilePictureUseCase)
    : super(EditProfilePictureInitial());
  final UpdateProfilePictureUseCase updateProfilePictureUseCase;
  Future<void> updateProfilePicture({required File image}) async {
    emit(EditProfilePictureLoading());
    final response = await updateProfilePictureUseCase.call(image);
    response.fold(
      (failure) =>
          emit(EditProfilePictureFailure(errorMessage: failure.message)),
      (result) => emit(EditProfilePictureSuccess()),
    );
  }
}
