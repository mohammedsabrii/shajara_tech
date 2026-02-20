import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
import 'package:shajara_tech/features/home/domain/use_case/get_occasions_use_case.dart';

part 'get_occasions_state.dart';

class GetOccasionsCubit extends Cubit<GetOccasionsState> {
  GetOccasionsCubit(this.getOccasionsUseCase) : super(GetOccasionsInitial());
  final GetOccasionsUseCase getOccasionsUseCase;
  Future<void> getOccasion() async {
    emit(GetOccasionsLoading());
    final data = await getOccasionsUseCase.call();
    data.fold(
      (faliure) => emit(GetOccasionsFailure(errorMessage: faliure.message)),
      (response) => emit(GetOccasionsSuccess(occasionEntity: response)),
    );
  }
}
