import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';
import 'package:shajara_tech/features/chat/domain/use_cases/get_messages_use_case.dart';

part 'get_messages_state.dart';

class GetMessagesCubit extends Cubit<GetMessagesState> {
  GetMessagesCubit(this.getMessagesUseCase) : super(GetMessagesInitial());
  final GetMessagesUseCase getMessagesUseCase;
  Future<void> getMessages({required int treeId}) async {
    emit(GetMessagesLoading());
    final data = await getMessagesUseCase.call(treeId: treeId);
    data.fold(
      (failure) => emit(GetMessagesFailure(errorMessage: failure.message)),
      (response) => emit(GetMessagesSuccess(messagesEntity: response)),
    );
  }

  void addLocalMessage(MessagesEntity newMessage) {
    if (state is GetMessagesSuccess) {
      final currentState = state as GetMessagesSuccess;

      final updatedMessages = List<MessagesEntity>.from(
        currentState.messagesEntity,
      )..insert(0, newMessage);

      emit(GetMessagesSuccess(messagesEntity: updatedMessages));
    }
  }
}
