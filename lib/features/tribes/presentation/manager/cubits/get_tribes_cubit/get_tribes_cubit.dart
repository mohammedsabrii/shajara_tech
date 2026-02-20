import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/domain/use_cases/get_tribes_use_case.dart';

part 'get_tribes_state.dart';

class GetTribesCubit extends Cubit<GetTribesState> {
  GetTribesCubit(this.getTribesUseCase) : super(GetTribesInitial());
  final GetTribesUseCase getTribesUseCase;
  Future<void> getTribes() async {
    emit(GetTribesLoading());
    final data = await getTribesUseCase.call();
    data.fold(
      (failure) => emit(GetTribesFaliure(errorMessage: failure.message)),
      (response) {
        if (response.isEmpty) {
          emit(GetTribesEmpty());
        }
        emit(GetTribesSuccess(tribes: response));
      },
    );
  }
}
