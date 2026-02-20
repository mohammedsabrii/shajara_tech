import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';
import 'package:shajara_tech/features/tribes/domain/use_cases/get_tribe_details_use_case.dart';

part 'get_tribe_details_state.dart';

class GetTribeDetailsCubit extends Cubit<GetTribeDetailsState> {
  GetTribeDetailsCubit(this.getTribeDetailsUseCase)
    : super(GetTribeDetailsInitial());
  final GetTribeDetailsUseCase getTribeDetailsUseCase;
  Future<void> getTribeDetails({required int tribeId}) async {
    emit(GetTribeDetailsLoading());
    final data = await getTribeDetailsUseCase.call(tribeId: tribeId);
    data.fold(
      (faliure) => emit(GetTribeDetailsFailure(errorMessage: faliure.message)),
      (response) => emit(GetTribeDetailsSuccess(tribeDetails: response)),
    );
  }
}
