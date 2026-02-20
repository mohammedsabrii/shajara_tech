import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/chat/domain/repo/chat_repo.dart';

class SendMessageUseCase {
  final ChatRepo messagesRepo;

  SendMessageUseCase({required this.messagesRepo});
  Future<Either<Failure, Unit>> call({
    required int treeId,
    required String messageContent,
  }) {
    return messagesRepo.sendMessage(
      treeId: treeId,
      messageContent: messageContent,
    );
  }
}
