import 'package:dartz/dartz.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';

abstract class ChatRepo {
  Future<Either<Failure, List<MessagesEntity>>> getMessages({
    required int treeId,
  });
  Future<Either<Failure, Unit>> sendMessage({
    required int treeId,
    required String messageContent,
  });
}
