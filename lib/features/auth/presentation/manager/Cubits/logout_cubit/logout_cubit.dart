import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:shajara_tech/features/auth/domain/use_cases/log_out_use_case.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.logOutUseCase) : super(LogoutInitial());
  final LogOutUseCase logOutUseCase;
  Future<void> logOut() async {
    emit(LogoutLoading());
    final data = await logOutUseCase.call();
    data.fold(
      (failure) => emit(LogoutFailure(errorMessage: failure.message)),
      (response) => emit(LogoutSuccess()),
    );
  }
}
