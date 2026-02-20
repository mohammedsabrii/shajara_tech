import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/chat/domain/use_cases/send_message_use_case.dart';

part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit(this.sendMessageUseCase) : super(SendMessageInitial());
  final SendMessageUseCase sendMessageUseCase;
  Future<void> sendMessage({
    required int treeId,
    required String messageContent,
  }) async {
    emit(SendMessageLoading());
    final data = await sendMessageUseCase.call(
      treeId: treeId,
      messageContent: messageContent,
    );
    data.fold(
      (failure) => emit(SendMessageFailure(errorMessage: failure.message)),
      (response) => emit(SendMessageSuccess()),
    );
  }
}
