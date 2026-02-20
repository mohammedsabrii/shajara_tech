import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/edit_profile/domain/entity/profile_info_entity.dart';
import 'package:shajara_tech/features/edit_profile/domain/use_cases/get_profile_info_use_case.dart';

part 'get_profile_info_state.dart';

class GetProfileInfoCubit extends Cubit<GetProfileInfoState> {
  GetProfileInfoCubit(this.getProfileInfoUseCase)
    : super(GetProfileInfoInitial());
  final GetProfileInfoUseCase getProfileInfoUseCase;
  Future<void> getProfileInfo() async {
    emit(GetProfileInfoLoading());
    final data = await getProfileInfoUseCase.getProfileInfo();
    data.fold(
      (failure) => emit(GetProfileInfoFailure(errorMessage: failure.message)),
      (response) => emit(GetProfileInfoSuccess(profileInfoEntity: response)),
    );
  }
}
