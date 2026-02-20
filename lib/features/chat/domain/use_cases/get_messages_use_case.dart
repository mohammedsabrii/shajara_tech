import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';
import 'package:shajara_tech/features/chat/domain/repo/chat_repo.dart';

class GetMessagesUseCase {
  final ChatRepo messagesRepo;

  GetMessagesUseCase({required this.messagesRepo});
  Future<Either<Failure, List<MessagesEntity>>> call({required int treeId}) {
    return messagesRepo.getMessages(treeId: treeId);
  }
}
