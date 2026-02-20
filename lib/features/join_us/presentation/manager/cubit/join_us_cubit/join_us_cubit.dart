import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';
import 'package:shajara_tech/features/join_us/domain/use_cases/join_us_use_case.dart';

part 'join_us_state.dart';

class JoinUsCubit extends Cubit<JoinUsState> {
  JoinUsCubit(this.joinUsUseCase) : super(JoinUsInitial());
  final JoinUsUseCase joinUsUseCase;
  Future<void> joinUs({required JoinUsModel joinUsModel}) async {
    emit(JoinUsLoading());
    final data = await joinUsUseCase.call(joinUsModel: joinUsModel);
    data.fold(
      (failure) => emit(JoinUsFailure(errorMessage: failure.message)),
      (response) => emit(JoinUsSuccess()),
    );
  }
}
